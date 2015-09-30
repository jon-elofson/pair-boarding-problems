class Array

  def my_shuffle
    self.length.times do |idx|
      new_idx = (rand * self.length).to_f.floor
      self[idx],self[new_idx] = self[new_idx],self[idx]
    end
    self
  end

end
