class SideEvent < ApplicationRecord
  mount_uploader :event_pdf, PdfUploader
  belongs_to :main_event

  after_initialize do
    self.date_time ||= Time.current
  end
end
