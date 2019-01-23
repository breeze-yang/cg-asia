ActiveAdmin.register MainEvent do
  config.sort_order = 'published_desc'

  permit_params :title, :location_name, :begin_time, :end_time, :prize_pool, :event_pdf,
                :structure_desc, :prize_desc, :location_desc
  form partial: 'form'

  index do
    render 'index', context: self
  end

  show do
    render 'show', context: self
  end

  member_action :publish, method: :post do
    MainEvent.find_by(published: true)&.update(published: false)
    MainEvent.find(params[:id]).update(published: true)
    redirect_back fallback_location: admin_main_events_url, notice: '发布成功'
  end

  sidebar '侧边栏', only: [:show, :edit, :edit_desc] do
    main_event_sidebar_generator(self)
  end

  action_item :edit_location, only: :show do
    link_to '编辑地点描述', edit_desc_admin_main_event_path(main_event, type: 'location'), target: '_blank'
  end

  member_action :edit_desc, method: :get do
    @desc_type = params[:type]
    titles = {
      structure: '盲注结构描述',
      prize: 'Prize描述',
      location: '地点描述'
    }
    @page_title = titles[@desc_type.to_sym]
    @main_event = MainEvent.find(params[:id])
  end

  member_action :update_desc, method: :post do
    @main_event = MainEvent.find(params[:id])
    @main_event.update(permitted_params[:main_event])
    redirect_back fallback_location: admin_main_event_url(@main_event),
                  notice: '编辑成功'
  end
end
