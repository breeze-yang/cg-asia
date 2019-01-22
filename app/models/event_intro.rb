class EventIntro < ApplicationRecord
  mount_uploader :image, ImgBaseUploader

  belongs_to :main_event
end
