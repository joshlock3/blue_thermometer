module ApplicationHelper
  def logo
    image_tag("blue_thermometer.png", :alt => "Blue Thermometer", :class => "round")
  end

  def title
    base_title = "Blue Thermometer"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

end
