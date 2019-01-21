class CreateMainEvent < ActiveRecord::Migration[5.2]
  def change
    create_table :main_events do |t|
      t.string :title, comment: '标题'
      t.string :location_name, comment: '地点名称'
      t.datetime :begin_time, comment: '开始时间'
      t.datetime :end_time, comment: '结束时间'
      t.string :prize_pool, comment: '奖池'
      t.string :event_pdf, comment: 'pdf文档'
      t.boolean :published, default: false, comment: '发布在官网可见'
    end
  end
end
