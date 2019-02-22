class OnlinePoker < ApplicationRecord
  mount_uploader :image, ImgBaseUploader

  scope :position_desc, -> { order(position: :desc, id: :desc) }

  after_initialize do
    self.online_time ||= Time.current
  end
end
