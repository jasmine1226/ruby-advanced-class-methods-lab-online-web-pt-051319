class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def self.find_by_name(name)
    @@all.collect do |song|
      if song.name == name
        return song
      end
    end
  #match == {} ? false : match
  false
  end

  def self.find_or_create_by_name(name) #fix this
    song = Song.find_by_name(name)
    puts song
    if song == false
      song = Song.create_by_name(name)
    end
    song
  end

end
