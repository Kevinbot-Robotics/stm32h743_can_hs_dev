---
title: STM32H743 CAN + USB-HS Dev Board
editURL: https://github.com/Kevinbot-Robotics/stm32h743_can_hs_dev/edit/master/docs/content/_index.md
cascade:
  type: docs
aliases:
  - /743-can-hs
  - /h743-can-hs
next: pinout
---

An STM32H743 development board with on-board USB-HS and CAN-FD (up to 8Mbit/s)

{{< carousel gallery="stm32h743-can-hs" >}}

{{< hextra/hero-button text="View Project on GitHub" link="https://github.com/Kevinbot-Robotics/stm32h743_can_hs_dev" >}}

{{< callout type="warning" >}}
  This design is still a work in progress, functionality has not been tested.
{{< /callout >}}

---

<div style="display: flex; flex-direction: row; align-items: center; gap: 1em;">
    <a href="https://certification.oshwa.org/us002841.html">
    <img src="/images/cert-mark.svg" class="light-only" alt="OSHW US2841" style="border-radius: 0px;" width="200">
    <img src="/images/cert-mark-dark.svg" class="dark-only" alt="OSHW US2841" style="border-radius: 0px;" width="200">
    </a>
    <p>This project is <a href="https://certification.oshwa.org/us002841.html">certified</a> by the Open Source Hardware Association</p>
</div>

<style>

.light-only {
  display: block;
}

.dark-only {
  display: none;
}

.dark .light-only,
html.dark .light-only {
  display: none;
}

.dark .dark-only,
html.dark .dark-only {
  display: block;
}
</style>

---

## Features

* STM32H743 microcontroller with 116 I/O pins exposed
* CAN-FD using DE-9 connector using industrial standard pinout
* High Speed USB 2.0 using USB3300 ULPI PHY
* 128Mbit QuadSPI NOR flash
* SWD debug using MIPI-10 Cortex Debug connector
* USB-C ports for DFU and HS
* Power path switching from HS and DFU port and backfeed prevention
* RGB LED
* Boot/Reset buttons

## Programming

The board can be programmed via the DFU port using the DFU bootloader by pressing BOOT and RESET to put the board into DFU mode.

The board may also be programmed/debugged using the MIPI-10 Cortex Debug connector.

## Development

The board supports any toolchain that supports the STM32H743 microcontroller, including the STM32CubeIDE and Zephyr.
Zephyr device trees and board configurations will be available in the future.

## Design Resources

{{< cards cols="3" >}}
  {{< card
    title="Simplified CAD Model"
    subtitle="Simplified 3D CAD model with passive components removed, STEP format"
    image="/images/resources/simplified-cad.png"
    link="https://raw.githubusercontent.com/Kevinbot-Robotics/stm32h743_can_hs_dev/refs/heads/master/stm32h743_can_hs_simplified.step"
  >}}
  {{< card
    title="Full CAD Model"
    subtitle="Complete 3D CAD model including passive components, STEP format"
    image="/images/resources/complete-cad.png"
    link="https://raw.githubusercontent.com/Kevinbot-Robotics/stm32h743_can_hs_dev/refs/heads/master/stm32h743_can_hs_full.step"
  >}}
  {{< card
    title="KiCAD Symbol & Footprint"
    subtitle="Coming Soon!<br>KiCAD 10 Symbol, Footprint, and 3D Model"
    image="/images/resources/coming-soon.png"
  >}}
{{< /cards >}}


## License

Hardware is licensed under the [GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html) license.
<br>
Documentation is licensed under the [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) license.
