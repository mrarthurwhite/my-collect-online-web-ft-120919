def my_collect(a)
  
  # It should take in an argument of a collection, 
  # iterate over that collection using a while loop, 
  # and execute the code in the block you call it 
  # with for each element in the collection (use the yield keyword). 
  # It should return the modified collection.
  i = 0
  while i < a.length
    yield (a [i])
    i +=1
  end
  
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end