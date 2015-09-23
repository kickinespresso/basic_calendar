if defined?(ActiveAdmin)
  ActiveAdmin.register  BasicCalendar::Event, as: 'Event' do
    # customize your resource here
    form do |f|
      f.semantic_errors # shows errors on :base
      f.inputs   do
        f.input :title
        f.input :description
        f.input :event_date, hint: 'Leave blank if it is a recurring event'
        panel 'Recurring Events' do
          para 'The following is for recurring events'
          f.input :schedule, :as=> :select, :input_html => { :class => 'recurring_select'}, :collection => options_for_select([[ "- not recurring -" , "null"],["Set schedule..." , "custom" ]], [ "- not recurring -" , "null"])
        end

      end
      f.actions         # adds the 'Submit' and 'Cancel' buttons
    end

    permit_params :title, :description, :event_date, :schedule
  end
end