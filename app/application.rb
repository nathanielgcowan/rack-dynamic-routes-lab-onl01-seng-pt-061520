class Application
  
  @@items = []
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path=="/items/"
      item_name = 
      resp.write "<ITEM PRICE>"
    else
      resp.write "Route not found"
      resp.status = 404
    end
 
    resp.finish
  end
end