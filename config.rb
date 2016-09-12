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
  blog.paginate = true
  blog.per_page = 3
  blog.sources = "blog/{year}-{month}-{day}-{title}.html"
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
end

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

  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, extensions = {})
    markdown.render(text)
  end
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
