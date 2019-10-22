require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class BearTest < MiniTest::Test

def setup
  @bear = Bear.new("Olly ", "brown")
  @fish1 = Fish.new("salmon")
  @fish2 = Fish.new("eel")
  @fish3 = Fish.new("sturgeon")
  @fish = [@fish1, @fish2, @fish3]
end

def test_bear_has_type()
  assert_equal("brown", @bear.type)
end

def test_stomach_is_empty()
  assert_equal(0, @bear.stomach_fish_count())
end

def test_add_fish()
  @bear.add_fish(@fish1)
  assert_equal(1, @bear.stomach_fish_count())
end


def test_bear_eats_fish_from_river()
  river = River.new("Esk", @fish)
  @bear.bear_eats_fish_from_river(@fish2, river)
  assert_equal(1, @bear.stomach_fish_count())
  assert_equal(2, river.fish_count())
end

def test_roar
  assert_equal("Grrr", @bear.roar())
end

end
