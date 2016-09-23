activate :directory_indexes
page "/404.html", directory_index: false

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :development do
  activate :livereload
end

configure :build do
  activate :gzip
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end

activate :dotenv
activate :s3_sync do |s3|
  s3.prefer_gzip = true
end
