module ApplicationHelper
  def pug_helper
    link_to 'Give Up', "http://www.google.co.uk/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0CDYQtwIwAA&url=http%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DsVMhuiHm50I&ei=BMjZT76FJYjA0QXXz62MBA&usg=AFQjCNGWr1QZZ57XCBh_ot05AItAd4u84A"
  end

  def dl_attribute_display_helper(attribute)
    attribute.blank? ? '..' : attribute
  end
end
