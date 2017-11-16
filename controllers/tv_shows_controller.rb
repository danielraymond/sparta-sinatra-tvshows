class TVShowController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "..")

  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  $tvshows = [{
	 id: 0,
	 title: "TV Show 1",
	 body: "description",
   video: "https://www.cats.org.uk/uploads/images/featurebox_sidebar_kids/grief-and-loss.jpg",
   image: "https://ibhuluimcom-a.akamaihd.net/ib.huluim.com/show/22881?region=US&size=952x536"
},
{
    id: 1,
    title: "TV Show 2",
    body: "description",
    video: "https://i.ytimg.com/vi/SfLV8hD7zX4/maxresdefault.jpg",
    image: "https://ibhuluimcom-a.akamaihd.net/ib.huluim.com/show/22881?region=US&size=952x536"
},
{
    id: 2,
    title: "TV Show 3",
    body: "description",
    video: "http://www.littlemonsterepc.co.uk/wp-content/uploads/2015/09/Rabbit-1.jpg",
    image: "https://ibhuluimcom-a.akamaihd.net/ib.huluim.com/show/22881?region=US&size=952x536"
}];

  get "/" do
    @title = "Homepage"
    erb :'tv_shows/home'
  end

  get "/tv-shows" do
    @title = "TV Shows"
    @shows = $tvshows
    erb :'tv_shows/index'
  end

  get "/tv-shows/:id" do
    id = params[:id].to_i
    @show = $tvshows[id]
    erb :'tv_shows/show'
  end

end
