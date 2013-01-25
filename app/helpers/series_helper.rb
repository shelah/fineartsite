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

  # Returns true if the index of the artwork is a multiple
  # of the square root of the number of artworks in the series
  def output_for_sqrt_artworks_row(index)
    html = ""
    if (0 == (index + 1) % Math.sqrt(@series.artworks.length).ceil)
      html = <<HTML
        <br/>
HTML
    end
    html
  end
end
