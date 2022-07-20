require 'pry'
require_relative 'dog_data'

class Dog
    attr_accessor :name, :age, :breed

    def initialize attributes={}
            attributes.each do |attr, value|
                self.send("#{attr}=", value)
            end
    end

    # create dog with name, age, image_url
    # access name age breed, image_url, lastfed, last walked times.
    # print details about a dog, including last walked and last fed.

end

binding.pry
