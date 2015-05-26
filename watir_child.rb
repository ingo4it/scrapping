def child
  ## xpath with child nodes
  if swatch_tag.xpath('.//img').present?
    color_info[:image_url] = swatch_tag.xpath('.//img/@src').text
  else
    color_info[:image_url] = image_urls[0]
  end
end