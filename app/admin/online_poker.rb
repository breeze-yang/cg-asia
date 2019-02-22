ActiveAdmin.register OnlinePoker do
  config.sort_order = 'position_desc'

  permit_params :title, :intro, :name, :online_time, :url, :image, :published, :position

  index do
    render 'index', context: self
  end

  controller do
    def find_collection(options = {})
      super.order(id: :desc)
    end
  end
end
