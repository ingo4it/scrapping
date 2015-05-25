def solution1  
  browser = Watir::Browser.new(:phantomjs)
  browser.goto url
  doc = Nokogiri::HTML(browser.html)
end

def solution2(b)
  b.execute_script("$('ul.thumbnails').html('');")  
  b.a({href: swatch_tag['href'], class: 'link'}).click
  b.element(:xpath => "//ul[@class='thumbnails']/li").wait_until_present
  doc = Nokogiri::HTML(b.html)
end