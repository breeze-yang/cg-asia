class CreateOnlinePokers < ActiveRecord::Migration[5.2]
  def change
    create_table :online_pokers do |t|
      t.string :name
      t.string :title
      t.string :intro
      t.string :image
      t.string :url
      t.datetime :online_time
      t.boolean :published, default: false
      t.timestamps
    end
  end
end
