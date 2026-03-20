if(CONFIG_CYBER60_LED_STATUS)
  target_sources(app PRIVATE cyber60_led.c)
endif()

if(CONFIG_ZMK_BUZZER)
  target_sources(app PRIVATE cyber60_buzzer.c)
endif()
