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
    if self.find_by_name(name) == false
      self.create_by_name(name)
    else
      self.find_by_name(name)
    else

    end
  end

end
