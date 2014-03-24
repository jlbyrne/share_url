get '/' do
  erb :index
end

post '/make_url' do
	app_id = params[:app_id] || 756906624327349
	link = params[:link] || nil
	caption = params[:caption] || nil
	name = url_safe_text(params[:name]) || nil
	description = url_safe_text(params[:description]) || nil
	picture_link = url_safe_link(params[:picture_link]) || nil
	#this is where facebook will say the post comes from
	redirect_uri = params[:redirect_uri] || "shareurl.info"
	#source is a media file url
	source = params[:source] || nil
	#options here are popup and page
	display = "page"

	p url_string = "https://www.facebook.com/dialog/feed?app_id=#{app_id}&display=#{display}&name=#{name}&caption=#{caption}&source=#{source}&link=#{link}&picture=#{picture_link}&description=#{description}&redirect_uri=#{redirect_uri}&show_error=true"
end