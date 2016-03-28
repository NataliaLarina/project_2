require 'bundler'
Bundler.require

require 'sinatra/base'

require './controllers/application'
require './controllers/account'
require './controllers/eyes'
require './controllers/face'
require './controllers/lips'
require './controllers/skincare'

map('/') {run ApplicationController}
map('/account') {run AccountController}
map('/eyes') {run EyesController}
map('/face') {run FaceController}
map('/lips') {run LipsController}
map('/skincare') {run SkincareController}
