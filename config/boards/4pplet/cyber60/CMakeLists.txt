# Copyright (c) 2022 The ZMK Contributors
# Copyright (c) 2022 Stefan Sundin (4pplet)
# SPDX-License-Identifier: MIT

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(cyber60)

target_sources(app PRIVATE
    cyber60_led.c
    cyber60_buzzer.c
)

add_definitions(-DCONFIG_NRF52840_QIAA)
