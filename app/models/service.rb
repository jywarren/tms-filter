class Service < ActiveRecord::Base

  def url_deslash
    url = self.url
    url.slice!(url.length-1) if url.last == '/'
    url
  end

  # /z/x/y.png
  # /z/x/(2**z-y-1).png
  def switch(x,y,z)
    url = self.url_deslash
    y = 2**z.to_i-y.to_i-1
    url+"/#{z}/#{x}/#{y}"
  end

end
