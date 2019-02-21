class AddPositionToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :position, :bigint, default: 0, comment: '排序'
  end
end
