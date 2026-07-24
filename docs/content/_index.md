---
title: STM32H743 CAN + USB-HS Dev Board
cascade:
  type: docs
aliases:
  - /743-can-hs
  - /h743-can-hs
next: pinout
---

An STM32H743 development board with on-board USB-HS and CAN-FD (up to 8Mbit/s)

{{< carousel gallery="stm32h743-can-hs" >}}

{{< hextra/hero-button text="View Project on GitHub" link="https://github.com/meowmeowahr/stm32h743_can_hs_dev" >}}

{{< callout type="warning" >}}
  This design is still a work in progress, functionality has not yet been tested.
{{< /callout >}}

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
