ActiveAdmin.register EventPrize do
  config.sort_order = 'level_asc'
  config.filters = false
  belongs_to :main_event, optional: true

  permit_params :level, :name, :prizes_table, :is_mobile, :main_event_id
  form partial: 'form'

  index do
    render 'index', context: self
  end

  action_item :memo, only: :index do
    link_to '编辑奖池分配描述', edit_desc_admin_main_event_path(main_event, type: 'prize'), target: '_blank'
  end
end
