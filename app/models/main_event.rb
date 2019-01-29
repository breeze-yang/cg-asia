class MainEvent < ApplicationRecord
  mount_uploader :event_pdf, PdfUploader
  has_many :side_events
  has_many :event_intros
  has_many :event_schedules
  has_many :event_structures, -> { order(level: :asc) }
  has_many :event_prizes
  has_many :prizes_in_mobile, -> { where(is_mobile: true).order(level: :asc) }, class_name: 'EventPrize'

  after_initialize do
    self.begin_time ||= Time.current
    self.end_time ||= Time.current
  end
end
