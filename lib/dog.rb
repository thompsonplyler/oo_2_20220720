require "pry"

#
# create dog with name, age, breed, image_url, last_fed_at, last_walked_at
#

class Dog

  # ✅ 1. class variable: all - holds all dogs we have saved

  @@all = []
    

  # ✅ 2. class method: 'all' - retrieves the value of the class variable

  def self.all
      @@all
  end

  attr_accessor :name, :age, :breed, :image_url, :last_walked, :last_fed
  def initialize(attributes = {})
    attributes.each { |attr, value| self.send("#{attr}=", value) }
  end

  # ✅ 3. instance method: 'save' - saves this dog instance to our class variable
  def save
    @@all << self
    self
  end

  # ✅ 4. class method: 'create' - creates a new instances and saves it to the class variable
  def self.create attributes={}
    self.new(attributes).save
  end

  # ✅ 5. instance method: 'walk' - updates the dog's last_walked_at property to the current time
  def walk
    @last_walked_at = Time.now
  end

  # ✅ 6. instance method: 'feed' - updates the dog's last_fed_at property to the current time
  def feed
    @last_fed_at = Time.now
  end

  # ✅ 7.print details about a dog, including last walked and last fed.
    def print # without formatted name
      puts "#{self.name}"
      puts "Age: #{self.age}"
      puts "Breed: #{self.breed}"
      puts "Image URL: #{self.image_url}"
      puts "Last walked: #{self.last_walked}"
      puts "Last fed: #{self.last_fed}"
    end

    def print_f # without formatted name
      puts "#{self.formatted_name}"
      puts "Age: #{self.age}"
      puts "Breed: #{self.breed}"
      puts "Image URL: #{self.image_url}"
      puts "Last walked: #{format_time(self.last_walked)}"
      puts "Last fed: #{format_time(self.last_fed)}"
    end



  private 
  
  # ✅ 8. private method #formatted_name
  # returns the name of the dog to indicate whether they are hungry or need a walk. 

  def formatted_name
    if self.last_fed_at.nil? && self.last_walked_at.nil?
      "#{self.name} is hungry and needs a walk."
    elsif self.last_fed_at.nil? 
      "#{self.name} is hungry."
    elsif self.last_walked_at.nil?
      "#{self.name} needs a walk."
    else
      self.name
    end
  end

  # ✅ 9. private method #formatted_time
  # returns a human readable version of the timn
  def format_time time
    time.strftime('%e %b %Y %H:%M:%S%p')
  end
end

buffy = Dog.create({name: "Buffy", age: 2, breed: "all of the above"})
binding.pry
