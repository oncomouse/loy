###
# Compass
###
require 'kramdown'
set :markdown_engine, :kramdown
set :markdown, :fenced_code_blocks => true,
               :autolink => true, 
               :smartypants => true,
               :footnotes => true,
               :superscript => true

#set :relative_links, true

# Change Compass configuration
compass_config do |config|
#   config.output_style = :compact
end
require "bourbon"
require "compass-normalize"
###
# Page options, layouts, aliases and proxies
###

page "*", :layout => "loy"

###
# Helpers
###

helpers do
	
	def javascript_path(file_path)
		asset_path(:js, file_path)
	end
	
	# Build navigation links in which the active page is highlighted:
	def navigation_link_to(txt, url)
		page_index = request["path"].gsub("index.html","")
		
		if url == "/#{page_index}"
			return link_to(txt, url, :class => "active")
		end
		link_to(txt,url)
	end
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

#activate :blog do |blog|
#	blog.prefix = "blog"
#	blog.layout = "blog/layout"
#	blog.summary_separator = /(READMORE)/
#	blog.summary_length = 250
#end

# Build-specific configuration
configure :build do
  ignore "/**/*.rb"
  # Change this to build with a different file root.	
  set :http_prefix, "/loy"

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  #activate :gzip
  
  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  #activate :relative_assets

  # Compress PNGs after build
  # I wouldn't use this.
  #activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end

activate :deploy do |deploy|
  deploy.method = :git
  #deploy.user = "me"
  #deploy.host = "my.server.com"
  #deploy.path = "~/my/deploy/path"
end