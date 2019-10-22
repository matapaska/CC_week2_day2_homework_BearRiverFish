require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')



class FishTest <MiniTest::Test

  def setup
    @fish =Fish.new("trout")
  end

  def test_can_create_fish
    assert_equal(Fish, @fish.class)
  end

  def test_fish_name
    assert_equal("trout", @fish.name)
  end

end
