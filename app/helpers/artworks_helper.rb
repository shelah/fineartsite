module ArtworksHelper
  def format_size
    str = @artwork.img_width.to_s() + 'x' + @artwork.img_height.to_s()
  end

  def format_dimension(float_dimension)
    str = ''
    if (float_dimension == float_dimension.to_i)
      str = float_dimension.to_i.to_s
    else
      str = float_dimension.to_s
    end
    str
  end
end
