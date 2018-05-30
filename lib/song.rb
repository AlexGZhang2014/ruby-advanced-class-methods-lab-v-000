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
    @@all << self.new
  end
  
  def self.new_by_name(name)
    self.new.name = name
    self.new
  end
  
  def self.create_by_name(name)
    self.new.name = name
    self.all << self.new
  end

end
