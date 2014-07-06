###
# Compass
###
#require "singularitygs"
#require 'toolkit'
# Change Compass configuration
# compass_config do |config|
#   config.output_style = (environment == :development) ? :nested : :compressed
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
 page "/issue_11/*", :layout => "issue"
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
 activate :livereload

# Methods defined in the helpers block are available in templates
 helpers do
  def page_title
    'Page Title Base  '+ current_page.data.title
  end
  def page_id
    current_page.data.title.downcase().tr(' ', '_')
  end
 end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :relative_links, true


# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
   activate :minify_css

  # Minify Javascript on build
   activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # activate :directory_indexes

  # Use relative URLs
   activate :relative_assets
   activate :imageoptim
  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
