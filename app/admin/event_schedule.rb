ActiveAdmin.register EventSchedule do
  config.filters = false
  config.sort_order = 'date_time_asc'

  belongs_to :main_event

  permit_params :date_time, :name, :buyin, :chip, :guarantee
end
