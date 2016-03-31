class MykitController < ApplicationController


  get '/' do
     erb :mykit
  end

  get '/all' do

    @all = Product.all
    puts @all
    erb :mykit
    #<% @products.each do |product| %>
    #<a href="/mykit/product/<%= product.id %>">View Detail</a>"
    #<% end %>
  end

  get '/product/:id' do
    @current_product = Product.find(params[:id])
    # @current_product.to_json
    #<%= @current_product.name %>
    erb :viewproduct
  end

end
