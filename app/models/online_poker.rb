class OnlinePoker < ApplicationRecord
  mount_uploader :image, ImgBaseUploader

  scope :id_desc, -> { order(id: :desc) }

  after_initialize do
    self.online_time ||= Time.current
  end
end
