if (swatch_tag_index > 0)
	b.execute_script("$('div#s7_mixedmediaview_swatches .s7thumb').remove();")
	b.img(id: swatch_tag['id']).click
	Watir::Wait.until { b.elements(xpath: '//div[@id="s7_mixedmediaview_swatches"]//div[@class="s7thumb"]').count > 0 }
	Watir::Wait.until {
	  thumbs = b.elements(xpath: '//div[@id="s7_mixedmediaview_swatches"]//div[@class="s7thumb"]')
	  thumbs.last.attribute_value('style').match(/background-image: url\((.*?)\)/).present?
	}
	product_doc = Nokogiri::HTML(b.html)
end