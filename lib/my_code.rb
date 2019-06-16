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


def reduce(source_array, start=nil)
  if start == nil
    source_array[0]
    n = 1
  else starting = start
    n=0
  end

  source_array.length.times do
    starting = yield(starting, source_array[n])
    puts "starting is #{starting}"
    # reduce(source_array){|memo, n| memo + n}
    n += 1
  end
  starting
end
