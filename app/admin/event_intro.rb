ActiveAdmin.register EventIntro do
  belongs_to :main_event

  permit_params :about_title, :title, :image, :description
end
