module SeriesHelper
  def format_datespan
    str = @series.begin_date.year.to_s
    if @series.end_date.nil?
      str += ' - present'
    else
      if @series.begin_date.year != @series.end_date.year
        str += " - " + @series.end_date.year.to_s
      end
    end
    str
  end
end
