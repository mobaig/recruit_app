module ApplicationHelper
  def pug_helper
    link_to 'Give Up', "http://www.google.co.uk/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0CDYQtwIwAA&url=http%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DsVMhuiHm50I&ei=BMjZT76FJYjA0QXXz62MBA&usg=AFQjCNGWr1QZZ57XCBh_ot05AItAd4u84A"
  end

  def display_external_link(external_link)
    external_link.blank? ? '..' : link_to("#{external_link}", "http://#{external_link}")
  end

  def display_internal_link(resource, method)
    resource.blank? ? '..' : link_to("#{resource.send(method)}", resource)
  end

  def display_email(email)
    email.blank? ? '..' : mail_to("#{email}")
  end

  def display_attribute(attribute)
    attribute.blank? ? '..' : attribute
  end
end
