class AddPositionToOnlinePokers < ActiveRecord::Migration[5.2]
  def change
    add_column :online_pokers, :position, :bigint, default: 0, comment: '排序'
  end
end
