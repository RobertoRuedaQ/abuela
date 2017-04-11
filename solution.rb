require "sinatra"

get "/" do
erb :index	
end

post "/di" do
	granny = params[:info] 
	granny.to_s
	if granny =~ /\w+[A-Z]/
		@answer = "Ahhh si, manzanas!"
	else
		@answer = "habla más duro mijito"
	end
	erb :di 
end