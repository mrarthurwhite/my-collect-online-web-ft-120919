def my_collect(a)
  
  # It should take in an argument of a collection, 
  # iterate over that collection using a while loop, 
  # and execute the code in the block you call it 
  # with for each element in the collection (use the yield keyword). 
  # It should return the modified collection.
  i = 0
  return_array = []
  while i < a.length
    return_array <<yield (a [i])
    i +=1
  end
  return return_array 
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end