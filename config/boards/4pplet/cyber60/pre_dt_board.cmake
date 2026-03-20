# Copyright (c) 2022 The ZMK Contributors
# Copyright (c) 2022 Stefan Sundin (4pplet)
# SPDX-License-Identifier: MIT

BOARD_ROOT := ..
include(${CMAKE_CURRENT_LIST_DIR}/board.cmake)

add_custom_target(
    pre_dt_target
    COMMAND ${CMAKE_COMMAND}
        -DZEPHYR_BASE=${ZEPHYR_BASE}
        -DTOOLCHAIN_ROOT=${TOOLCHAIN_ROOT}
        -DCMAKE_SYSTEM_NAME=Zephyr
        -DCMAKE_SYSTEM_PROCESSOR=cortex-m4
        -DCFG_TREE=${ZEPHYR_BASE}/include/dt-bindings
    DEPENDS ${ZEPHYR_BASE}/include/dt-bindings
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/use_dts
)
