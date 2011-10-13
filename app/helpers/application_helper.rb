module ApplicationHelper

  def cat(*text)
    text.join(' ')
  end

  def default_image_tag
    image_tag('default.jpg')
  end
end
