ActiveAdmin.register MainEvent do

  permit_params :title, :location_name, :begin_time, :end_time, :prize_pool, :event_pdf
  form partial: 'form'

  index do
    render 'index', context: self
  end

  show do
    render 'show', context: self
  end
end
