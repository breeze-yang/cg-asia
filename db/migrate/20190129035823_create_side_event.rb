class CreateSideEvent < ActiveRecord::Migration[5.2]
  def change
    create_table :side_events do |t|
      t.references :main_event
      t.datetime :date_time
      t.string :name, limit: 200
      t.string :buyin, limit: 200
      t.string :chip, limit: 200
      t.string :guarantee, limit: 200
      t.string :event_pdf, comment: 'pdf文档'
    end
  end
end
