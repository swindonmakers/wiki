# :host => '127.3.3.1'     # default '0.0.0.0'
# :port => '12345'         # default '35729'
# :apply_css_live => false # default true
# :override_url => false   # default false
# :grace_period => 5       # default 0 (seconds)

guard 'livereload', :grace_period => 0.5 do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html))).*}) { |m| "/assets/#{m[3]}" }
end
