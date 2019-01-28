class MainEvent < ApplicationRecord
  mount_uploader :event_pdf, PdfUploader
  has_many :event_intros
  has_many :event_schedules
  has_many :event_structures
  has_many :event_prizes

  after_initialize do
    self.begin_time ||= Time.current
    self.end_time ||= Time.current
  end
end
