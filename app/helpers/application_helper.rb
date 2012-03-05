module ApplicationHelper
  def status_light_image(location)
    if location.status
      image_tag "location-open.png"
    else
      image_tag "location-closed.png"
    end
  end
end
