get '/' do
  erb :index
end

get '/make_a_link' do
	erb :make_a_link
end

post '/make_url' do
	app_id = params[:app_id] != "" ? params[:app_id] : 756906624327349
	link = params[:link] 
	caption = params[:caption] 
	name = url_safe_text(params[:name]) != "" ? url_safe_text(params[:name]) : url_safe_link(params[:link])
	description = url_safe_text(params[:description]) 
	picture_link = url_safe_link(params[:picture_link]) 
	#this is where facebook will say the post comes from
	redirect_uri = params[:redirect_uri] != "" ? url_safe_link(params[:redirect_uri]) : url_safe_link("http://www.shareurl.info")
	#options here are popup and page
	display = "page"

	link = "https://www.facebook.com/dialog/feed?app_id=#{app_id}&display=#{display}&name=#{name}&caption=#{caption}&link=#{link}&picture=#{picture_link}&description=#{description}&redirect_uri=#{redirect_uri}"

	"<a href='#{link}' target='_blank'>#{name}</a><br><br>#{link}"
end

get '/help' do 
	erb :help
end
