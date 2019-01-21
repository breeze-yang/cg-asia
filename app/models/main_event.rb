class MainEvent < ApplicationRecord
  mount_uploader :event_pdf, PdfUploader

  after_initialize do
    self.begin_time ||= Time.current
    self.end_time ||= Time.current
  end
end
