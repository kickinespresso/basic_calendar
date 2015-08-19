class CreateBasicCalendarEvents < ActiveRecord::Migration
  def change
    create_table :basic_calendar_events do |t|
      t.string :title
      t.text :description
      t.datetime :event_date
      t.text :schedule

      t.timestamps null: false
    end
  end
end
