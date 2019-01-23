class CreateEventStructures < ActiveRecord::Migration[5.2]
  def change
    create_table :event_structures do |t|
      t.references :main_event
      t.float    'level',  default: 0, comment: '级别'
      t.string   'ante',   comment: '前注'
      t.string   'blinds'
      t.string   'content', comment: '文字输入类型对应的内容'
      t.boolean  'is_content', default: false, comment: '用来区分是文字内容还是blinds'
    end
  end
end
