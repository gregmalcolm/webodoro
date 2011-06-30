# A sample Guardfile
# More info at https://github.com/guard/guard#readme

#guard 'coffeescript', :input => 'app/coffeescripts'

guard 'coffeescript', :output => 'public/javascripts/compiled' do
  watch(%r{^app/coffeescripts/(.*)\.coffee$})
end

guard 'coffeescript', :output => 'spec/javascripts' do
  watch(%r{^spec/coffeescripts/(.*)\.coffee$})
end

guard 'livereload' do
  watch(%r{^spec/javascripts/.+\.js$})
  watch(%r{^public/javascripts/compiled/.+\.js$})
end

