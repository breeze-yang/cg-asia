ActiveAdmin.register SideEvent do
  config.filters = false
  config.sort_order = 'date_time_asc'

  belongs_to :main_event

  permit_params :date_time, :name, :buyin, :chip, :guarantee, :event_pdf
  index do
    render 'index', context: self
  end
end
