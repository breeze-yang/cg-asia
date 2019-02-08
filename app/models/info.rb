class Info < ApplicationRecord
  mount_uploader :image, ImgBaseUploader

  scope :id_desc, -> { order(id: :desc) }
end
