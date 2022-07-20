require 'pry'

#
# create dog with name, age, breed, image_url, last_fed, last_walked
#

class Dog
  attr_accessor :name, :age, :breed
  # ✅ 1. class variable: all - holds all dogs we have saved
  # ✅ 2. class method: 'all' - retrieves the value of the class variable

  def initialize attributes={}
        attributes.each do |attr, value|
            self.send("#{attr}=", value)
        end
  end

  # ✅ 3. instance method: 'save' - saves this dog instance to our class variable
  # ✅ 4. class method: 'create' - creates a new instances and saves it to the class variable
  # ✅ 5. instance method: 'walk' - updates the dog's last_walked property to the current time
  # ✅ 6. instance method: 'feed' - updates the dog's last_fed property to the current time
  # ✅ 7. print details about a dog, including last walked and last fed.
  # ✅ 8. private method #formatted name
  # ✅ 9. private method #formatted_time
end

binding.pry
