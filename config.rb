MiniRacer::Platform.set_flags! :single_threaded

###
# Page options, layouts, aliases and proxies
###
page "/index.html", :layout => false

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash, :ignore => [/^img/]

  # Use relative URLs
  activate :relative_assets

  # https://github.com/plasticine/middleman-imageoptim
  activate :imageoptim do |options|
    options.pngout = false
    options.svgo = false
  end
end
