ActiveAdmin.register Series do
  index do
    column("Series", :sortable => :id) {|series| link_to "##{series.id} ", admin_series_path(series) }
    column("Name", :name)
    column("Begin Date", :begin_date)
    column("End Date", :end_date)
  end

end
