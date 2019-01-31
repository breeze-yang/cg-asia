class CreateInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :infos do |t|
      t.string :title
      t.string :image
      t.string :intro
      t.string :main_body
      t.timestamps
    end
  end
end
