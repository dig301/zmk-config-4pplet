# Copyright (c) 2022 The ZMK Contributors
# SPDX-License-Identifier: MIT

set(BOARD_REVISION $ENV{ZMK_BOARD_REVISION})
if(NOT BOARD_REVISION)
    set(BOARD_REVISION "rev_d")
endif()

if(BOARD_REVISION STREQUAL "rev_a")
    set(REV a)
elseif(BOARD_REVISION STREQUAL "rev_b")
    set(REV b)
elseif(BOARD_REVISION STREQUAL "rev_c")
    set(REV c)
elseif(BOARD_REVISION STREQUAL "rev_d")
    set(REV d)
elseif(BOARD_REVISION STREQUAL "rev_e")
    set(REV e)
else()
    message(FATAL_ERROR "Unsupported board revision: ${BOARD_REVISION}")
endif()
