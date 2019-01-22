class CreateEventIntros < ActiveRecord::Migration[5.2]
  def change
    create_table :event_intros do |t|
      t.references :main_event
      t.string :about_title
      t.string :title
      t.string :description, limit: 5000
      t.string :image
    end
  end
end
