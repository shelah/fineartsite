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

  def conditional_prev_link
    unless @prev_id.nil?
      link_to image_tag('previous.gif', :alt => "previous", :size => "21x11", :id => @prev_id, :controller => 'artworks', :action => 'show')
    end
  end

  def conditional_next_link
    unless @next_id.nil?
      link_to image_tag('next.gif', :alt => "next", :size => "21x11", :id => @next_id, :controller => 'artworks', :action => 'show')
    end
  end

end
