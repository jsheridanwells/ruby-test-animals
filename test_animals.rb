require 'minitest/autorun'
require_relative 'animals'

class AnimalsTest < MiniTest::Test

	def setup
		@Animal = Animal.new('Dog', 'Canine', 30, '4')

		@Dog = Dog.new
	end

	def test_animal_has_name_property
		assert_includes Animal.name
	end


end