#
# This is a clean version of our Dog file with repeated methods
# abstracted out to Savable and without notes. 
#
#

require "pry"
require_relative './savable.rb'

class Dog < Savable

    attr_accessor :name, :age, :breed, :image_url, :last_walked_at, :last_fed_at

    def walk
    @last_walked_at = Time.now
    end

    def feed
    @last_fed_at = Time.now
    end

    def print
        puts "#{self.formatted_name}"
        puts "Age: #{self.age}"
        puts "Breed: #{self.breed}"
        puts "Image URL: #{self.image_url}"
        puts "Last walked: #{format_time(self.last_walked_at)}"
        puts "Last fed: #{format_time(self.last_fed_at)}"
    end

    private 
  
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

    def format_time time
    time.strftime('%e %b %Y %H:%M:%S%p')
    end
end