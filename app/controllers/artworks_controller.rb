class ArtworksController < InheritedResources::Base
  before_filter :get_series

  # GET /artworks/1
  # GET /artworks/1.xml
  def show
    @series_plural = Series.all
    if @series
      @artwork = @series.artworks.find(params[:id])
    else
      @artwork ||= Artwork.find(params[:id])
    end
    @prev_id = previous_artwork_id
    @next_id = next_artwork_id

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @artwork }
    end
  end

  private
  def get_series
    if (params[:series_id])
      @series = Series.find(params[:series_id])
    end
  end

  def previous_artwork_id
    prev_id = nil
    @series.artworks.each do |artwork|
      if @artwork.id == artwork.id
        break;
      else
        prev_id = artwork.id
      end
    end
    prev_id
  end

  def next_artwork_id
    next_id = nil
    @series.artworks.each_with_index do |artwork, index|
      if @artwork.id == artwork.id && index < @series.artworks.length - 1
        next_id = @series.artworks[index + 1].id
        break;
      end
    end
    next_id
  end

end
