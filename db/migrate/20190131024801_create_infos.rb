class CreateInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :infos do |t|
      t.string :title
      t.string :image
      t.string :intro
      t.text :main_body
      t.boolean :published, default: false
      t.timestamps
    end
  end
end
