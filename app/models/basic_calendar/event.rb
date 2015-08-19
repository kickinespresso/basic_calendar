module BasicCalendar
  class Event < ActiveRecord::Base
    extend SimpleCalendar
    #has_calendar
    has_calendar :attribute => :event_date
  end
end
