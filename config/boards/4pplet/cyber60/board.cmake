# Copyright (c) 2022 The ZMK Contributors
# SPDX-License-Identifier: MIT

set(REV av)
set(BOARD_ROOT ${CMAKE_CURRENT_LIST_DIR}/..)
include(${CMAKE_CURRENT_LIST_DIR}/revision.cmake)

if(NOT DEFINED ENV{ZMK_KEYBOARD})
  message(WARNING "Environment variable ZMK_KEYBOARD is not defined. Defaulting to 'cyber60'.")
  set(ZMK_KEYBOARD "cyber60")
else()
  set(ZMK_KEYBOARD $ENV{ZMK_KEYBOARD})
endif()

if(REV STREQUAL av)
  set(CYBER60_BOARD_NAME "Cyber60")
  set(CYBER60_MODEL_NAME "")
else()
  set(CYBER60_BOARD_NAME "Cyber60 ${REV}")
  set(CYBER60_MODEL_NAME "_${REV}")
endif()

string(TOUPPER ${ZMK_KEYBOARD} ZMK_KEYBOARD_UPPER)
string(TOUPPER ${REV} REV_UPPER)
string(TOUPPER ${CYBER60_MODEL_NAME} MODEL_NAME_UPPER)

set(CONFIG_BOARD_CYBER60_${REV_UPPER} y)
set(CONFIG_BOARD_CYBER60${MODEL_NAME_UPPER} y)
set(CONFIG_ZMK_KEYBOARD_NAME "${CYBER60_BOARD_NAME}")
set(CONFIG_MODEL_${ZMK_KEYBOARD_UPPER}${MODEL_NAME_UPPER} y)

include(${ZEPHYR_BASE}/boards/common/board.cmake)
include(${ZEPHYR_BASE}/boards/common/nrfjprog.board.cmake)
