class TVShowController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, 'views') }

  configure :development do
    register Sinatra::Reloader
  end

  $tvshows = [{
	 id: 0,
	 title: 'Rick and Morty',
	 body: 'This is the rick and morty intro.',
   video: '<iframe width="560" height="315" src="https://www.youtube.com/embed/u_7ou27JwxM" frameborder="0" gesture="media" allowfullscreen></iframe>',
   image: 'https://ibhuluimcom-a.akamaihd.net/ib.huluim.com/show/22881?region=US&size=952x536'
},
{
    id: 1,
    title: 'Game of Thrones',
    body: 'This is the game of thrones intro.',
    video: '<iframe width="560" height="315" src="https://www.youtube.com/embed/g62vFgt7RRo" frameborder="0" gesture="media" allowfullscreen></iframe>',
    image: 'https://dailypost.in/wp-content/uploads/2017/07/s-5bb8b779c9194dbba3093167e84733545199b97e.jpg'
},
{
    id: 2,
    title: 'Peep Show',
    body: 'This is the peep show intro.',
    video: '<iframe width="560" height="315" src="https://www.youtube.com/embed/5lXdmTjNUfo" frameborder="0" gesture="media" allowfullscreen></iframe>',
    image: 'http://www.drg.tv/Content/Images/Brand/peep-show-182.jpg'
}];

  get '/' do
    @title = 'Homepage'
    erb :'tv_shows/home'
  end

  get '/tv-shows' do
    @title = 'TV Shows'
    @shows = $tvshows
    erb :'tv_shows/index'
  end

  get "/tv-shows/new" do
    @title = "New"
    erb :'tv_shows/new'
  end

  get '/tv-shows/:id' do
    id = params[:id].to_i
    @show = $tvshows[id]
    erb :'tv_shows/show'
  end

  get "/tv-shows/:id/edit" do
    @title = "Edit"
    erb :'tv_shows/edit'
  end

  put "/photos/:id" do
    id = params[:id]
    "This is the put page SHOW: #{id}"
  end

  delete "/photos/:id" do
    "This will delete a show"
  end

end
