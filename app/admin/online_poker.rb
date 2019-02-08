ActiveAdmin.register OnlinePoker do
  permit_params :title, :intro, :name, :online_time, :url, :image, :published

  index do
    render 'index', context: self
  end
end
