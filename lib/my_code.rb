# Your Code Here

def map(arr)
  newArr = []
  i = 0
  while i < arr.length
    newArr.push(yield arr[i])
    i+= 1
  end
  newArr
end

# map([1, 2, 3, -9]){|n| n * -1}
# map(dune){|n| n}

def reduce(source_array, start=false)
  if start == false
    starting = source_array[0]
  else starting = start
  end

  source_array.length.times do
    starting = yield(source_array)
    puts starting
  end
  starting
end
