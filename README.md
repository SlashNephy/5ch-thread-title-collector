# 5ch-thread-title-collector

5ch のスレタイを収集するスクリプトです。[saya の板定義](https://github.com/SlashNephy/saya/blob/dev/docs/definitions.yml) を拡充するために使用しています。

```yml
version: '3.8'

services:
  collector:
    container_name: 5ch-thread-title-collector
    image: slashnephy/5ch-thread-title-collector
    restart: always
    volumes:
      - ./result.yml:/result.yml
    environment:
      BOARD1: swallow.5ch.net/livejupiter
      BOARD2: himawari.5ch.net/liveskyp
      BOARD3: himawari.5ch.net/livewowow
      BOARD4: himawari.5ch.net/weekly
      BOARD5: fate.5ch.net/liveuranus
      BOARD6: mao.5ch.net/endless
```
