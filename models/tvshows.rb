class TVShow

  attr_accessor :id, :title, :body

  def self.open_connection

    conn = PG.connect(dbname: "tvshows")

  end

  def self.hydrate(show_data)

    tvshow = TVShow.new

    tvshow.id = show_data['id']
    tvshow.title = show_data['title']
    tvshow.body = show_data['body']
    

    tvshow

  end

  def self.all

    conn = self.open_connection

    sql = "SELECT id,title,body FROM tvshow ORDER BY id"

    results = conn.exec(sql)

    tvshows = results.map do |tvshow|
      self.hydrate(tvshow)
    end

  end



end
