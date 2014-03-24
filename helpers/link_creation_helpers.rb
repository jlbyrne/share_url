helpers do
	def url_safe_text(text)
		if text.class.name == "String"
			text.gsub(/\s/, "%20")
		end
	end

	def url_safe_link(link)
		if link.class.name == "String"
			link.gsub(/:/, "%3A").gsub(/\//, "%2F")
		end
	end
end