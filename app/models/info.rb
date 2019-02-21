class Info < ApplicationRecord
  mount_uploader :image, ImgBaseUploader

  scope :position_desc, -> { order(position: :desc, id: :desc) }
end
