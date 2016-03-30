class ApplicationController < Sinatra::Base


  ActiveRecord::Base.establish_connection(
     :adapter => 'postgresql',
     :database => 'makeup_kit',
    )

  set :views, File.expand_path('../../views', __FILE__)
  set :public_dir, File.expand_path('../../public', __FILE__)

  enable :sessions

  not_found do
    erb :notfound
  end

  get '/' do
     erb :index
  end


end
