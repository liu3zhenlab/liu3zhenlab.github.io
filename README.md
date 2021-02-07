# plantgghlab.github.io
https://plantgghlab.github.io

https://plantgenomics.ksu.edu/liulab

## Notes
- This site is generated with [Jekyll](https://jekyllrb.com/). Documentation for
  Jekyll can be found [here](https://jekyllrb.com/docs/).
- The content of this site is generated from Markdown files. By default, Jekyll
  processes Markdown files using
  [kramdown](https://kramdown.gettalong.org/index.html). Documents for the
  syntax understood by kramdown can be found
  [here](https://kramdown.gettalong.org/quickref.html).
  - Another Markdown processor can be used instead by setting the `markdown` key
    in [_config.yml](_config.yml) ([See
    also](https://jekyllrb.com/docs/configuration/markdown/)).
  - You can also use HTML file directly instead of Markdown.
- Jekyll uses the Liquid template language process Markdown/HTML templates.
  - In short, you denote variable with double curly brace (e.g. `{{ var }}`) and
    logic statement with curly brace percentage sign (e.g. `{% if condition
    %}...{% endif %}`). 
  - For an example of Liquid in action, see [people.md](people.md). For more
    details, see the [official Liquid
    documentation](https://shopify.github.io/liquid/).
  - Jekyll also provides a number of useful Liquid additions
    - [Jekyll-specific filters](https://jekyllrb.com/docs/liquid/filters/)
    - [Jekyll-specific tags](https://jekyllrb.com/docs/liquid/tags/)
- Files can specify data/metadata using [front
  matter](https://jekyllrb.com/docs/front-matter/) (a YAML block at the
  beginning of the file, delimitted by triple-dashed lines). For examples:
  ```markdown
  ---
  title: Publications
  # by default, expand this many years/sections
  show: 3
  ---
  ...
  ```
- For more Jekyll resources, see [here](https://jekyllrb.com/resources/).

## Some common tasks
### Uploading static files
Static files such as images should be added under [assets/](assets/). It is not
mandatory but images should be put under [assets/images/](assets/images/) for
organizational purpose.

### Adding a news item
- Create a new Markdown file under [`_news/`](_news/) with the name following
  the format `YYYY-MM-DD-optional-title.md`, its contents should look something
  like this
  ```markdown
  ---
  ---
  Something happened!
  ```
  - **NOTES**: the YAML header is required. Otherwise, the file is ignored
    by Jekyll.
- The date in the filename is used for sorting. By default, 10 most recent news
  items are shown. This value can be changed by editing the file
  [_includes/recent_news.md](_includes/recent_news.md).
- If the news item is associated with a website/study, you can provide either
  `link` or `doi` in the front matter block. An appropriate link will be
  appended automatically the news item. [Example
  1](_news/1970-01-09-maize-transformation.md), and [example
  2](_news/1970-01-10-glossy-genes.md)
  
### Adding a new lab member
Create a new Markdown file under [_people/](_people/) with the name `NN-name.md`
where `NN` is a number to determine sorting order. Higher value means listed
first.
  
The content of the file should look something like this

``` markdown
---
name: Dr. Sanzhen Liu
position: Associate Professor
email: liu3zhen@ksu.edu
photo: assets/images/people/liu.jpg
---
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
culpa qui officia deserunt mollit anim id est laborum.
```

- `position` if unspecified, defaults to `Undergraduate Research Assistant`.
  This default value can be changed by editing
  [_includes/person.md](_includes/person.md)
- `email` is optional, only shown if specified
- `photo` if unspecified, a default avatar is shown
- After the front matter, an optional bio can be added as well

### Adding a new blog entry
- Create a new Markdown file under [`_blog/`](_blog/) with the name following
  the format `YYYY-MM-DD-optional-title.md`
- **NOTES** Similar to news item, a front matter block at the beginning is required.
- To attach a photo to the blog entry, specify `img:` in the YAML metadata where
  to find the photo. See [2018-08-24.md](_blog/2018-08-24.md) for an example.
  
### Adding a new publication
- Add a new entry in the YAML file `_data/publications.yml`
- A link to the publication will be appended if the optional `doi` key is
  specified.
- When a footnote is needed, use the normal Markdown syntax to write the
  footnote. But the footnote definition(s) should be placed under the `footnotes`
  key, like so
  ```yaml
  - year: 2014
    pubs:
      - citation: "J Nestler, S Liu[^nestler], TJ Wen, A Paschold, C Marcon, HM Tang, D Li, L Li, RB Meeley, H Sakai, W Bruce, PS Schnable, F Hochholdinger, 2014 Roothairless5, which functions in maize (Zea mays L.) root hair initiation and elongation encodes a monocot-specific NADPH oxidase. Plant J, 79: 729-740."
        doi: 10.1111/tpj.12578
        footnotes: |
          [^nestler]: Co-first author
  ```
## Site-specific plugins
Jekyll plugins are written in [Ruby](https://ruby-doc.org/). Some plugins
specific to this site are found under [_plugins/](_plugins/). For documentation
on how to write a Jekyll plugin, see [here](https://jekyllrb.com/docs/plugins/).
