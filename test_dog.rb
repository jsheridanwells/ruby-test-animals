require 'minitest/autorun'
require_relative 'dog'


class DogTest < MiniTest::Test

	def setup
		@dog = Dog.new("Fido")
		@dog.legs = 4
		@dog.speed = 10.0
	end

	def test_if_dog_is_kind_of_animal
		assert_kind_of Dog, @dog
	end

	def test_if_Fido_is_instance_of_Dog
		assert_instance_of Dog, @dog
	end

	def test_if_dog_name_is_string
		assert_instance_of String, @dog.name
	end

	def test_if_legs_is_accessible_property
		assert_equal 4, @dog.legs
	end

	def test_if_legs_returns_integer
		assert_instance_of Integer, @dog.legs
	end

	def test_if_speed_is_accessible_property
		assert_equal 10.0, @dog.speed
	end

	def test_if_speed_returns_float
		assert_instance_of Float, @dog.speed
	end

	def test_if_walk_returns_value
		refute_nil @dog.walk
	end

	def test_if_walk_returns_float
		assert_instance_of Float, @dog.walk
	end

end
