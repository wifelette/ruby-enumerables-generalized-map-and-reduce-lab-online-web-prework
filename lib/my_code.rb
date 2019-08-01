def map(array)
  array.map! do |item|
    yield item
  end
end

array = [1,2,3, -9]

map(array) do |n|
  n * -1
end

def reduce(array, starting_point = 0)
  array.reduce do |item|
    yield item
  end
end

reduce(array, starting_point = 0) do |n|
  total = starting_point + n
end
