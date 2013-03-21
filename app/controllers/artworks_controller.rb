class ArtworksController < InheritedResources::Base
  before_filter :get_series

  # GET /artworks
  # GET /artworks.xml
  def index
    if @series
      @artworks = @series.artworks
    else
      @artworks = Artwork.find_all_by_series_id(:series_id)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @artworks }
    end
  end

  # GET /artworks/1
  # GET /artworks/1.xml
  def show
    @series_plural = Series.all
    if @series
      @artwork = @series.artworks.find(params[:id])
    else
      @artwork = Artwork.find(params[:id])
    end
    @prev_id = previous_artwork_id
    @next_id = next_artwork_id

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @artwork }
    end
  end

  # GET /artworks/new
  # GET /artworks/new.xml
  def new
    @artwork = Artwork.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @artwork }
    end
  end

  # GET /artworks/1/edit
  def edit
    @artwork = Artwork.find(params[:id])
  end

  # POST /artworks
  # POST /artworks.xml
  def create
    @artwork = @series.artworks.build(params[:artwork])

    respond_to do |format|
      format.html do
        if @artwork.save
          flash[:notice] = 'Artwork was successfully created.'
          redirect_to series_artwork_path(@series.id, @artwork)
        else
          render :action => "new"
        end
      end
    end
  end

  # PUT /artworks/1
  # PUT /artworks/1.xml
  def update
    @artwork = Artwork.find(params[:id])

    respond_to do |format|
      format.html do
        if @artwork.update_attributes(params[:artwork])
          redirect_to series_artwork_path(@artwork.series_id, @artwork)
        else
          render :action => "edit"
        end
      end
    end
  end

  # DELETE /artworks/1
  # DELETE /artworks/1.xml
  def destroy
    @artwork = @series.artworks.find(params[:id])
    @artwork.destroy

    respond_to do |format|
      format.html { redirect_to(series_index(@series.id)) }
      format.xml  { head :ok }
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
