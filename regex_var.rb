# http://productshots1.modcloth.net/productshots/0158/4483/7c9e0fb6e5a2bdd6a7eeea91ddfd59ed.jpg?1434137499
# http://productshots0.modcloth.net/productshots/0158/4479/687728b09bf684ae1227afa7e6899480.jpg?1434137492

# http://productshots0.modcloth.net/productshots/0158/4489/98b6e949348ad2857a923072afc6829b.jpg?1434137506
# http://productshots0.modcloth.net/productshots/0158/4489/a368dd8fef770cb6296928e0b527910f.jpg?1434137506





# image_url = "http://productshots1.modcloth.net/productshots/0158/4483/7c9e0fb6e5a2bdd6a7eeea91ddfd59ed.jpg?1434137499"
# regex_str = "carousel_url : 'carousel_url :'#{image_url}'"

# Regexp.compile(Regexp.escape(regex_str))

# js_text.match(/Regexp.compile(Regexp.escape(regex_str))/)
# js_text.match(/Regexp.new(regex_str)/)



image_url = "http://productshots1.modcloth.net/productshots/0158/4483/7c9e0fb6e5a2bdd6a7eeea91ddfd59ed.jpg?1434137499"

full_img_reg = "hi_res_url : '(.+)'.*"
thumb_img_reg = "carousel_url : '#{Regexp.escape(image_url)}'"
regex_str = "#{full_img_reg}#{thumb_img_reg}"
multiline_reg = Regexp.new(regex_str, Regexp::MULTILINE)

# regex_str = Regexp.compile(thumb_img_reg)
# js_text.match(Regexp.compile(regex_str))
js_text.match(multiline_reg)



full_img_reg = "hi_res_url : '(.+)'.*"
thumb_img_reg = "carousel_url : '#{Regexp.escape(image_url)}'"
regex_str = "#{full_img_reg}pdp_url.*#{thumb_img_reg}"
multiline_reg = Regexp.new(regex_str, Regexp::MULTILINE)
full_img_url = js_text.match(multiline_reg)[1]


