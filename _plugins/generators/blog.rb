# Add a 'year' property to items in the _blog collection
# This way we can group them by year in the template
module Jekyll
  class BlogExtrasGenerator < Jekyll::Generator
    def generate(site)
      for item in site.collections["blog"].docs
        date = Date.strptime(File.basename(item.path, ".md"), "%Y-%m-%d")
        item.data["date"] = date
        item.data["year"] = date.year
      end
    end
  end
end
