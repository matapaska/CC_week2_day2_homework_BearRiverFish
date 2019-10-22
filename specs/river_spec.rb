require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')
require_relative('../bears')

class RiverTest <MiniTest::Test

  def setup

   @fish1 = Fish.new("salmon")
   @fish2 = Fish.new("eel")
   @fish3 = Fish.new("sturgeon")

   @fish = [@fish1, @fish2, @fish3]
   @river = River.new("Braid_burn", @fish)


  end

  def test_river_has_name
    assert_equal("Braid_burn", @river.name)
  end

  def test_fish_count
    assert_equal(3, @river.fish_count())
  end

  def test_remove_fish
    @river.remove_fish(@fish3)
    assert_equal(2, @river.fish_count())
  end





end
