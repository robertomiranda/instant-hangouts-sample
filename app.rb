require "nancy"
require "nancy/render"

class App < Nancy::Base
  include Nancy::Render
  use Rack::Static, :urls => ["/css", "/images", "/js"], :root => "public"

  get "/" do
    render("views/index.html")
  end

  get "/:page_name" do
    render("views/#{params['page_name']}")
  end
end
