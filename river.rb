class River
attr_reader :name, :fish

def initialize(name, fish)

  @name = name
  @fish = fish

end

def fish_count()
  @fish.size()
end

def remove_fish(fish)
  index = @fish.index(fish)
  @fish.delete_at(index)
  end

end
