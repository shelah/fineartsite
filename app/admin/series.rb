ActiveAdmin.register Series do
  filter :name
  filter :begin_date
  filter :end_date

  form :partial => "form"

  index do
    column("Series", :sortable => :id) {|series| link_to "##{series.id} ", admin_series_path(series) }
    column "Name", :name
    column "Begin Date", :begin_date, :sortable => :begin_date
    column("End Date", :end_date, :start_year => '1980', :end_year => Time.now.year, :use_month_numbers => true, :include_blank => true)
  end

end
