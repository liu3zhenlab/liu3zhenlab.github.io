class Jekyll::PhoneTag < Liquid::Tag
  def initialize(tag_name, phone_number, tokens)
    super
    @phone_number = phone_number
  end
  def render(_)
    href = @phone_number.gsub(/[^0-9+]/, '')
    %Q(<a href="tel:#{href}">#{@phone_number}</a>)
  end
end

Liquid::Template.register_tag('phone', Jekyll::PhoneTag)
