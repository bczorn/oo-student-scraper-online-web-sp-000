class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    student_hash.each do |key, value|
      self.send("#{key.to_s}=", value)
      @@all << self
    end
  end

  def self.create_from_collection(students_array)
    students_array.each do |x|
      self.new(x)
    end
  end

  def add_student_attributes(attributes_hash)
      x = Scraper.scrape_profile_page
      Scraper.scrape_profile_page.send(attributes_hash)
      
  end

  def self.all
    @@all
  end
end

