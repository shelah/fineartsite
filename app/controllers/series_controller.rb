class SeriesController < InheritedResources::Base
  def index
    @series_plural = Series.all
    @home_page_artwork = Artwork.find_all_by_home_image(true)[0]

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /series/1
  # GET /series/1.xml
  def show
    @series_plural = Series.all
    @series = Series.find(params[:id])
    @artworks = @series.artworks

    respond_to do |format|
      format.html # show.html.erb
    end
  end
end
