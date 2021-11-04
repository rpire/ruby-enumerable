module MyEnumerable
  def all?
    each { |num| return false unless yield num }
    true
  end

  def any?
    each { |num| return true if yield num }
    false
  end

  def filter
    arr = []
    each { |num| arr.push(num) if yield num }
    arr
  end
end
