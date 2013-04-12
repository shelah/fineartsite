class SeriesController < InheritedResources::Base
  before_filter :get_series_plural

  def index
    @home_page_artwork = Series.home_page_artwork
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @series_plural }
    end
  end

  # GET /series/1
  # GET /series/1.xml
  def show
    @series = Series.find(params[:id])
    @artworks = @series.artworks

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @series }
    end
  end

  def statement
    respond_to do |format|
      format.html # statement.html.erb
    end
  end

  def bio
    respond_to do |format|
      format.html # bio.html.erb
    end
  end

  protected
  def get_series_plural
    @series_plural = Series.all
  end

end
