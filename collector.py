import html
import itertools
import os
import re
import time
import traceback
import unicodedata
import urllib.request

import yaml

SUBJECT_URLS = [f"https://{v}/subject.txt" for k, v in os.environ.items() if k.startswith("BOARD")]

def get(url, encoding="utf-8"):
    headers = {
        "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3864.0 Safari/537.36"
    }
    request = urllib.request.Request(url, headers=headers)

    with urllib.request.urlopen(request) as response:
        return response.read().decode(encoding)


if __name__ == "__main__":
    definitions = yaml.load(get("https://raw.githubusercontent.com/SlashNephy/saya/dev/docs/definitions.yml"))
    keywords = {
        url: list(itertools.chain.from_iterable(
            [
                x["keywords"]
                for x in definitions["boards"]
                if "keywords" in x and x["server"] + ".5ch.net/" + x["board"] in url
            ]
        ))
        for url in SUBJECT_URLS
    }
    thread_title = re.compile(r"^(\d+).dat<>(.+)  \(\d+\)$")
    print(keywords)

    threads = {url: {} for url in SUBJECT_URLS}
    known_threads = {url: {} for url in SUBJECT_URLS}
    while True:
        try:
            for url in SUBJECT_URLS:
                subject = html.unescape(get(url, "ms932"))
                for line in subject.splitlines():
                    m = thread_title.match(line)
                    if m:
                        id, title = m.groups()
                        title = unicodedata.normalize("NFKC", title)
                        if any(x in title for x in keywords[url]):
                            known_threads[url][id] = title
                        else:
                            threads[url][id] = title

            with open("result.yml", "w") as f:
                yaml.dump({
                    "unknown": {url: sorted(x.values()) for url, x in threads.items()},
                    "known": {url: sorted(x.values()) for url, x in known_threads.items()}
                }, f, allow_unicode=True, indent=2, default_flow_style=False)

            time.sleep(30)
        except KeyboardInterrupt:
            break
        except Exception:
            traceback.print_exc()
