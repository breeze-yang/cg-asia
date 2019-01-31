ActiveAdmin.register Video do
  permit_params :title, :intro, :url, :duration, :image, :published

  index do
    render 'index', context: self
  end

  show do
    render 'show', context: self
  end
end
