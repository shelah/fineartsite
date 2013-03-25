module ApplicationHelper
  def format_size(width, height)
    str = width.to_s() + 'x' + height.to_s()
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
