module BreadcrumbsFilters

  # Return the url's breadcrumbs
  def breadcrumbs(url)    
	@name_arr = url.split("/")
	@arr_len = @name_arr.length()

	@ret_str = ""
	for i in 1..@arr_len - 2
		if i == 1
			@url = @name_arr[i]
		elsif i == 2
			@url = @name_arr[i-1] + "/" + @name_arr[i]
		elsif i == 3
			@url = @name_arr[i-2] + "/" + @name_arr[i-1] + "/" + @name_arr[i]
		elsif i == 4
			@url = @name_arr[i-3] + "/" + @name_arr[i-2] + "/" + @name_arr[i-1] + + "/" + @name_arr[i]
		end
		
		@pos = @name_arr[i].index("-")
		if @pos != nil
			@name = ""
			@name_arr[i].split("-").each{|w| @name += w.capitalize + " "}
			@name = @name.strip
		else
			@name = @name_arr[i].capitalize
		end
	
		@ret_str += '<a href="/' + @url + '.html">' + @name + '</a> <span class="sub">&raquo;</span>' + "\n\t\t\t"
	end
	
	return @ret_str 
  end
  
  # Return the breadcrumbs class by url
  def breadcrumbs_class(url)
  	if url == '/index.html'
  		return "main"
  	else
  		return "content"
  	end
  end
  
end

Liquid::Template.register_filter(BreadcrumbsFilters)