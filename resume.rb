%w{ rubygems sinatra haml sass }.each { |r| require r }

get '/' do
  File.read(File.join('public', 'index.html'))
end

get '/css/main.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :main
end