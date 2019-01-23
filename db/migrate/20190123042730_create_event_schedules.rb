class CreateEventSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :event_schedules do |t|
      t.references :main_event
      t.datetime :date_time
      t.string :name, limit: 200
      t.string :buyin, limit: 200
      t.string :chip, limit: 200
      t.string :guarantee, limit: 200
    end
  end
end
