ActiveAdmin.register Video do
  config.sort_order = 'position_desc'

  permit_params :title, :intro, :url, :duration, :image, :published, :position

  index do
    render 'index', context: self
  end

  show do
    render 'show', context: self
  end

  controller do
    def find_collection(options = {})
      super.order(id: :desc)
    end
  end
end
