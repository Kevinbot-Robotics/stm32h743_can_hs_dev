# STM32H743 CAN + USB-HS — Documentation

Source for the STM32H743 CAN + USB-HS dev board documentation.

This is a self-contained [Hugo](https://gohugo.io/) module. It is consumed by
[kevinbot.net](https://kevinbot.net) as a Hugo module, but it can also be built
and previewed on its own so the docs can be published and contributed to
independently of the main site.

## Preview locally

Requires the extended edition of Hugo.

```sh
hugo server
```

The docs are served under `/dev/stm32h743-can-hs/` (the same path they occupy on
kevinbot.net), so every internal link and asset path resolves identically in
both builds.

## Layout

- `content/` — the documentation pages (Markdown).
- `static/` — interactive BOM, Pinion pinout viewer, and carousel images.
- `data/galleries/` — image list for the front-page carousel.
- `layouts/shortcodes/` — the `carousel` and `pinion` shortcodes (mirrored from
  kevinbot.net so this site renders standalone; the main site's copies take
  precedence when integrated).
