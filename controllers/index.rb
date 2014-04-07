get '/' do
  erb :index
end

post '/make_url' do
	app_id = params[:app_id] != "" ? params[:app_id] : 145634995501895
	link = params[:link] 
	caption = params[:caption] 
	name = url_safe_text(params[:name]) 
	description = url_safe_text(params[:description]) 
	picture_link = url_safe_link(params[:picture_link]) 
	#this is where facebook will say the post comes from
	redirect_uri = params[:redirect_uri] != "" ? params[:redirect_uri] : "https://developers.facebook.com/tools/explorer"
	#source is a media file url
	source = params[:source] 
	#options here are popup and page
	display = "page"

	p params

	p url_string = "https://www.facebook.com/dialog/feed?app_id=#{app_id}&display=#{display}&name=#{name}&caption=#{caption}&source=#{source}&link=#{link}&picture=#{picture_link}&description=#{description}&redirect_uri=#{redirect_uri}&show_error=true"
end