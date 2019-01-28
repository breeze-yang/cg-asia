class CreateEventPrizes < ActiveRecord::Migration[5.2]
  def change
    create_table :event_prizes do |t|
      t.references :main_event
      t.integer :level
      t.string  :name
      t.text    :prizes_table
      t.boolean :is_mobile, default: false
      t.timestamps
    end
  end
end
