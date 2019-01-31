ActiveAdmin.register Info do
  permit_params :title, :intro, :main_body, :image, :published
  form partial: 'form'

  index do
    render 'index', context: self
  end

  show do
    render 'show', context: self
  end
end
