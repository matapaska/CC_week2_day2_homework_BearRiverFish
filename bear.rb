class Bear
  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

 def stomach_fish_count()
   @stomach.size()
 end

 def add_fish(fish)
  @stomach.push(fish)
 end

 def bear_eats_fish_from_river(fish, river)
   add_fish(fish)
   river.remove_fish(fish)
 end

 def roar()
  return "Grrr"
 end

end
