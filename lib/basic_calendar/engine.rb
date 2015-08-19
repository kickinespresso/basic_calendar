require 'simple_calendar'
require 'bootstrap-sass'
require 'simple_form'

module BasicCalendar
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    require 'jquery-ui-rails'
    require 'recurring_select'

    isolate_namespace BasicCalendar

    initializer "basic_calendar.assets.precompile" do |app|
      app.config.assets.precompile += %w(admin/basic_js.js admin/basic_cal.css admin/basic_cal.js)
    end

    initializer :basic_calendar do
      ActiveAdmin.application.load_paths += Dir[File.dirname(__FILE__) + '/admin']
      ActiveAdmin.setup do |config|
        #config.register_stylesheet 'admin/basic'
        #config.register_javascript 'admin/basic_js.js'
        config.register_stylesheet 'admin/basic_cal.css'
        config.register_javascript 'admin/basic_cal.js'
      end
    end


  end
end
