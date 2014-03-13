class QuickUnion
  attr_accessor :object_ids, :size

  def initialize(int)
   @object_ids = (0..int).to_a 
   @size       = [1] * (int + 1)
  end

  def connected?(object1, object2)
   root(object1) == root(object2)
  end
  
  def union(object1, object2)
   i  = root(object1)
   j  = root(object2)
   return if i == j
   if (size[i] < size[j])
    object_ids[i] = j
    size[j] += size[i]
   else
    object_ids[j] = i
    size[i] += size[j]
   end
  end

  private
  def root(i)
   while(i != object_ids[i])
    object_ids[i] = object_ids[object_ids[i]]
    i = object_ids[i]
   end
   return i
  end
end

test = QuickUnion.new(5)
puts "object_id datastructure"
p test.object_ids
puts "running union(5,4)"
test.union(5,4)
puts "object_ids after union"
p test.object_ids
puts "running union(1,5)"
test.union(1,5)
puts "object_ids after union"
p test.object_ids
puts "checking for connection between 1 and 4"
puts test.connected?(1,4)
