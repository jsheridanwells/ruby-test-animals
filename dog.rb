require_relative 'animals'

class Dog < Animal

    def initialize(name)
    	# call Animal's initialize
    	# dog is species "Dog", 4 legs, speed of 10
        super(name, "Dog")
    end

    # Sets the speed of the dog
    def walk
        @speed = @speed + (0.2 * @legs)
    end
end