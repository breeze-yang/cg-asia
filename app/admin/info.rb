ActiveAdmin.register Info do
  config.sort_order = 'position_desc'

  permit_params :title, :intro, :main_body, :image, :published, :position
  form partial: 'form'

  index do
    render 'index', context: self
  end

  show do
    render 'show', context: self
  end
end
