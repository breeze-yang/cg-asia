ActiveAdmin.register EventStructure do
  config.filters = false
  config.sort_order = 'level_asc'
  belongs_to :main_event

  permit_params :level, :ante, :blinds, :content, :is_content

  action_item :memo, only: :index do
    link_to '编辑盲注描述', edit_desc_admin_main_event_path(main_event, type: 'structure'), target: '_blank'
  end
end
