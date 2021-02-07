module Jekyll
  class IncludeMarkdownTag < Jekyll::Tags::IncludeTag
    def render(context)
      context.registers[:site]
        .find_converter_instance(Jekyll::Converters::Markdown)
        .convert(super)
    end
  end
end

Liquid::Template.register_tag('include_md', Jekyll::IncludeMarkdownTag)
