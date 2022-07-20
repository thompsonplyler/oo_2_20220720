#
# This is a clean version of our Dog file with repeated methods
# abstracted out to Savable and without notes. 
#
#

require "pry"
require_relative './savable.rb'

class Dog < Savable

    attr_accessor :name, :age, :breed, :image_url, :last_walked, :last_fed

    def walk
    @last_walked = Time.now
    end

    def feed
    @last_fed = Time.now
    end

    def print
        puts "#{self.formatted_name}"
        puts "Age: #{self.age}"
        puts "Breed: #{self.breed}"
        puts "Image URL: #{self.image_url}"
        puts "Last walked: #{format_time(self.last_walked)}"
        puts "Last fed: #{format_time(self.last_fed)}"
    end

    private 
  
    def formatted_name
    if self.last_fed.nil? && self.last_walked.nil?
        "#{self.name} is hungry and needs a walk."
    elsif self.last_fed.nil? 
        "#{self.name} is hungry."
    elsif self.last_walked.nil?
        "#{self.name} needs a walk."
    else
        self.name
    end
    end

    def format_time time
    time.strftime('%e %b %Y %H:%M:%S%p')
    end
end