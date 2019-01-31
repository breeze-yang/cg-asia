class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :intro
      t.string :image
      t.string :url
      t.string :duration
      t.boolean :published, default: false
      t.timestamps
    end
  end
end
