module ArtworksHelper
  def conditional_prev_link
    unless @prev_id.nil?
      link_to image_tag('previous.gif', :alt => "previous", :size => "21x11"),
              :id => @prev_id, :series_id=> @series.id, :controller => 'artworks',:action => 'show'
    end
  end

  def conditional_next_link
    unless @next_id.nil?
      link_to image_tag('next.gif', :alt => "next", :size => "21x11"),
              :id => @next_id, :series_id=> @series.id, :controller => 'artworks', :action => 'show'
    end
  end

end
