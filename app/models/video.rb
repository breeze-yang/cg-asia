class Video < ApplicationRecord
  mount_uploader :image, ImgBaseUploader
end
