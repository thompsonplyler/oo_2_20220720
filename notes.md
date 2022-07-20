### Announcements

- Tom will be giving more lab help tonight
- [Ask Tom if this is still legit.] There are still some stragglers with the code challenge. Check Piazza for a note form us, and even if you don't see it the reassignment.

### SWBAT

- [] Observe how to build class methods
- [] Explain the difference between a class method and an instance method.
- [] Explain self.
- [] Explain what private methods are
- [] Explain inheritance in OO
- [] Observe inheritance in OO

### Deliverables

- add an `@@all` class variable
- add an `.all` method that retrieves all Dogs.
- add a `#save` method that will save a dog to `@@all`
- add a `.create` method that will create a new instance of the dog class and save it to `@@all`
- add a `#walk` method that will mark `last_walked_at` as the current time.
- add a `#feed` method that will mark `last_fed_at` as the current time.
- add a private method `formatted_name` that will return the name of the dog and a message in red if they need to be walked or fed, and the name of the dog in green if they have been both walked and fed.
- add a private method `format_time(time)` that will accept a time as an argument and return it in a human readable format using the `#strftime` method.
- Demonstrate how we can use inheritance with a `Savable` class that defines `.all`, `.create`, `save`, and `initialize` to reuse that code in multiple classes.
- Create a `Walk` class that inherits from `Savable` to demonstrate this in action.

### Resources

### Lecture Hot Takes

### Vocabulary

- class methods
- shovel
- instructional syntax for instance method `#method`
- instructional syntax for class method `.method`
- Time.now
- private methods
- .nil?
- strftime
  - [For a Good Striftime](https://www.foragoodstrftime.com/)
