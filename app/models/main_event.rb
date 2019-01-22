class MainEvent < ApplicationRecord
  mount_uploader :event_pdf, PdfUploader
  has_many :event_intros

  after_initialize do
    self.begin_time ||= Time.current
    self.end_time ||= Time.current
  end
end
