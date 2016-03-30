class AddtokitController < ApplicationController

@new_product = ""

get '/' do
   erb :add_to_my_kit
end

# information needs to be posted somewhere
# post '/' do
#   # params[:something]
#   params[:product]
#   params[:brand]
#   params[:name]
#   params[:description]
#   params[:store]
#   params[:image]
#   params[:price]
#   params[:url]
#   params[:purchasedate]
#   params[:expirationdate]
# end

post '/' do
  # binding.pry

  puts params
  puts '-----------------------------'
  @new_product = Product.create({
    image: params[:image],
    product: params[:product],
    brand: params[:brand],
    name: params[:name],
    description: params[:description],
    store: params[:store],
    purchasedate: params[:purchasedate],
    expirationdate: params[:expirationdate],
    price: params[:price],
    weblink: params[:weblink],
  });

    @new_product.save

    redirect '/'
  end



end
