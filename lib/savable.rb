class Savable
    @@all = []
    
    def self.all
      @@all
    end
  
    def initialize(attributes = {})
      attributes.each { |attr, value| self.send("#{attr}=", value) }
    end
    
    def save
      @@all << self
      self
    end
  
    def self.create attributes={}
      self.new(attributes).save
    end
end