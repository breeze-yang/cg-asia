class OnlinePoker < ApplicationRecord
  mount_uploader :image, ImgBaseUploader

  after_initialize do
    self.online_time ||= Time.current
  end
end
