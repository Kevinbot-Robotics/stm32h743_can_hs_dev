---
title: "Development"
editURL: https://github.com/Kevinbot-Robotics/stm32h743_can_hs_dev/edit/master/docs/content/development.md
weight: 3
---

This project requires [KiCad](https://www.kicad.org/) 10.0.5 or compatible.

### Building documentation

This project uses a Makefile for building. Documentation requires [Hugo](https://gohugo.io/), and a system Python interpreter with the KiCAD API.

Only Linux is supported for now. WSL within Windows may work.

Run `make all` to create a Python environment, rebuild docs, pinout diagrams, and the interactive BOM.

{{< callout type="warning" >}}
  This step may take a few minutes, use `make docs` if you only want to update the docs without rebuilding the interactive assets.
{{< /callout >}}

Run `make docs` to rebuild the markdown documentation, re-using the pre-built interactive assets (they are included in this repo)

Run `make ibom` to rebuild the interactive BOM. The new BOM will be located in the `bom/` directory, and `docs/static/ibom/`

Run `make pinout` to rebuild the interactive pinout. The built pinout will be located in `docs/static/pinion/`

{{< callout type="warning" >}}
  This step may take a few minutes.
{{< /callout >}}

Run `make clean` to remove the Python environment and built docs.
