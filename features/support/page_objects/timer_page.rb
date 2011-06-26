require_relative 'page'

module PageObject
  class TimerPage < Page
    DISPLAY_ID = 'timer_display'
    START_BUTTON_ID = 'start_pause_button'

    def self.path
      @path ||= '/timer'
    end

    def visit
      visit_path(TimerPage.path)
    end

    def click_start
      click(START_BUTTON_ID)
    end

    def retrieve_display_time
      retrieve_element_value(DISPLAY_ID) 
    end
  end
end
