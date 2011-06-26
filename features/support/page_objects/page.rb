module PageObject
  class Page

    def initialize(world)
      @world = world
    end  

    def visit_path(path)
      @world.visit path
    end

    def click(id)
      @world.click_button(id.to_s)  
    end

    def retrieve_element_value(id)
      element = @world.find_by_id(id)
      display = element.text.strip
      if display =~ /^\d\d:\d\d$/ then
        Time.parse("00:#{display}").to_i
      else
        nil
      end
    end 
  end
end
