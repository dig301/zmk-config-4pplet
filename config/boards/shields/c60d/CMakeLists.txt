# Copyright (c) 2024 4pplet
# SPDX-License-Identifier: MIT

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(c60d_nrf52840)

target_sources(app PRIVATE)
