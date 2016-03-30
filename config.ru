require 'bundler'
Bundler.require

require 'sinatra/base'

require './models/account'
require './models/product'
require './models/addtokit'


require './controllers/application'
require './controllers/account'
require './controllers/addtokit'
require './controllers/eyes'
require './controllers/face'
require './controllers/lips'
require './controllers/skincare'

map('/')          {run ApplicationController}
map('/account')   {run AccountController}
map('/addtokit')  {run AddtokitController}
map('/eyes')      {run EyesController}
map('/face')      {run FaceController}
map('/lips')      {run LipsController}
map('/skincare')  {run SkincareController}
