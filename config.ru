require 'bundler'
Bundler.require

require 'sinatra/base'

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
