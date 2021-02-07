# Make sure that the attribute content for each document
# is the unrendered content as advertised
# Otherwise, they are actually the value of output (i.e. rendered)

class Jekyll::Document
  attr_accessor :raw_content
end

Jekyll::Hooks.register :documents, :pre_render do |d|
  d.raw_content = d.content
end

Jekyll::Hooks.register :documents, :post_render do |d|
  d.content = d.raw_content
end
