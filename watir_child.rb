require 'nokogiri'
swatch_tag = doc.xpath('//div[contains(@class, "container")]')
swatch_tag.xpath('.//img').present?
    
