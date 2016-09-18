###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

page "*", layout: :secondarypages

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration
activate :blog do |blog|
  #blog.day_link = "/news/{year}/{month}/{day}"
  #blog.month_link = "/news/{year}/{month}"
  blog.paginate = true
  blog.per_page = 3
  #blog.permalink = "/news/{year}/{month}/{day}/{title}"
  blog.sources = "blog/{year}-{month}-{day}-{title}.html"
  #blog.taglink = "/news/tags/{tag}"
  #blog.year_link = "/news/{year}"
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
end

# the blog has inbound non-directory indexes links from places like Twitter.
#page "/news.html", :directory_index => false
#page "/news.html", :directory_indexes => false
#redirect "/news.html", to: "/news"
#redirect "/2016/09/08/ngns-pi-meeting.html", to: "/news/2016/09/08/ngns-pi-meeting"
#redirect "/2016/06/07/kickoff-meeting.html", to: "/news/2016/06/07/kickoff-meeting"

# gets rid of '.html' in URLs- however, this breaks the link from twitter. 
# activate :directory_indexes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
helpers do
  def nav_link(link_text, url, options = {})
    if current_page.url == url
      '<li class="active">' + link_to(link_text, url, options) + '</li>'
    else
      '<li>' + link_to(link_text, url, options) + '</li>'
    end
  end

  def sidebar_nav(current_page)
    source = File.read(current_page.source_file).lines

    # strip metadata off of the page content. 
    opening_delim = false
    while line = source.shift
      if line.strip == '---'
        if opening_delim
          break
        else
          opening_delim = true
        end
      end
    end
    markdown = source.join

    Redcarpet::Markdown.new(Redcarpet::Render::HTML_TOC, :with_toc_data => true).render(markdown)
  end

  def markdown(text)
    Redcarpet::Markdown.new(Redcarpet::Render::HTML, extensions = {}).render(text)
  end
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
