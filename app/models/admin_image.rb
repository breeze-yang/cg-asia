class AdminImage < ApplicationRecord
  mount_uploader :image, ImgBaseUploader
  belongs_to :imageable, polymorphic: true, optional: true
end
