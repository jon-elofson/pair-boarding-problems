class BonusStack

  attr_accessor :max

  def initialize
    @store = []
    @max = nil
  end

  def add(value)
    @store << value
    if @max.nil? || value > @max
      @max = value
    end
  end

  def remove
    value = @store.pop
    if @max = value
      find_new_max
    end
    value
  end

  def find_new_max
    @max = @store.max
  end

end
