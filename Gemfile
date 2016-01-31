source 'https://rubygems.org'

gem "compass", ">=1.0" #ensure Compass 1.0
gem "sass", ">=3.3.0"
gem "builder", ">=3.0"
gem "middleman", "~>3"
gem "middleman-deploy"
gem "bourbon"
gem "compass-normalize"
gem "kramdown"

# Speed enhacnements that don't like Windows:
gem "therubyracer", "=0.12.1" if not RbConfig::CONFIG['target_os'] =~ /mswin|mingw/i
gem "oj" if not RbConfig::CONFIG['target_os'] =~ /mswin|mingw/i
gem 'wdm', '>= 0.1.0' if RbConfig::CONFIG['target_os'] =~ /mswin|mingw/i