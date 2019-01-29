module ApplicationHelper
  def main_event_sidebar_generator(context)
    context.instance_eval do
      ul do
        li link_to '主赛详情', admin_main_event_path(main_event)
        li link_to '主赛赛程', admin_main_event_event_schedules_path(main_event)
        li link_to '盲注结构', admin_main_event_event_structures_path(main_event)
        li link_to '奖池分配', admin_main_event_event_prizes_path(main_event)
        li link_to '边赛列表', admin_main_event_side_events_path(main_event)
        li link_to '编辑地点描述', edit_desc_admin_main_event_path(main_event, type: 'location'), target: '_blank'
      end
    end
  end

  def render_structure_tds(structure)
    if structure.is_content
      content_tag('td', structure.content, class: 'highlight', colspan: 3)
    else
      "<td>#{structure.level.to_i}</td>
       <td>#{structure.ante}</td>
       <td>#{structure.blinds}</td>"
    end
  end
end
