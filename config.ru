require 'bundler'
Bundler.require

require 'sinatra/base'



if ENV['DATABASE_URL']
  DB = ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
else
  DB = ActiveRecord::Base.establish_connection(
     :adapter => 'postgresql',
     :database => 'makeup_kit',
  )
end




require './models/account'
require './models/product'
require './models/addtokit'
require './models/mykit'



require './controllers/application'
require './controllers/account'
require './controllers/addtokit'
require './controllers/mykit'





map('/')          {run ApplicationController}
map('/account')   {run AccountController}
map('/addtokit')  {run AddtokitController}
map('/mykit')     {run MykitController}
