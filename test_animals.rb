require 'minitest/autorun'
require_relative 'animals'

class AnimalTest < MiniTest::Test

	def setup
		@animal = Animal.new
		@cat = Animal.new("Cat")
		@owl = Animal.new("Owl", "Bird")
		# @animal.name = "Liger"
	end

	def test_initialize_with_no_arguments
		assert_nil @animal.name
		assert_nil @animal.species
		assert_equal 0, @animal.speed
		assert_equal 0, @animal.legs
	end

	def test_initialize_with_one_argument
		assert_equal "Cat", @cat.name
		assert_nil @cat.species
		assert_equal 0, @cat.speed
		assert_equal 0, @cat.legs
	end

	def test_initialize_with_two_arguments
		assert_equal "Owl", @owl.name
		assert_equal "Bird", @owl.species
		assert_equal 0, @owl.speed
		assert_equal 0, @owl.legs
	end

	def test_if_name_is_string
		assert_instance_of String, @cat.name
	end

	def test_if_species_is_a_string
		@animal.species = "Bird"
		assert_match @animal.species, "Bird"
	end

	def test_if_speed_is_an_accessible_property
		@animal.speed = 12
		assert_equal @animal.speed, 12
	end

	def test_if_legs_is_an_accessible_property
		@animal.legs = 4
		assert_equal @animal.legs, 4
	end

	def test_if_species_is_a_string
		assert_instance_of String, @owl.species
	end

	def test_if_speed_is_a_number
		@animal.speed = 101
		assert_instance_of Integer, @animal.speed
		@animal.speed = 212.23
		assert_instance_of Float, @animal.speed
	end

	def test_if_legs_is_a_number
		@animal.legs = 2
		assert_instance_of Integer, @animal.legs
		@animal.legs = 2.5
		assert_instance_of Float, @animal.legs
	end

	def test_walk_when_legs_is_zero
		assert_raises TypeError do
			@animal.walk
		end
	end

	def test_walk_when_legs_greater_than_zero
		@animal.legs = 1
		current_speed = @animal.speed
		@animal.walk
		assert_equal 0.1, (current_speed + (0.1 * 1)),
		@animal.speed
	end

	def test_if_instance_of_animal
		assert_instance_of Animal, @animal
	end

end