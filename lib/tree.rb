require_relative "node"
#require_relative "movies.txt"

class Tree
  attr_reader :root, :tree_values


  def initialize
    @root = nil
    @tree_values = []
    @depth_of = Hash.new { |h, k| h[k] = []  }
    @movies = Hash.new { |h, k| h[k] = [] }
  end

  def insert(value, title)
    node = Node.new(value, title)
    if @root == nil
      @root = node
      @tree_values << node.value
      @depth_of[value] = 0
      @movies[title] = value
      #binding.pry
      0
    else
      push(node)
    end
  end


  def push(new_node, current = @root, counter = 1)
    if (new_node.value < current.value) && current.left == nil
      current.left = new_node
      @tree_values << new_node.value
      @depth_of[new_node.value] = counter
      @movies[new_node.title] = new_node.value
      #binding.pry
      counter
    elsif (new_node.value < current.value)
      push(new_node, current.left, counter += 1)
      @tree_values << new_node.value
      @depth_of[new_node.value] = counter
      @movies[new_node.title] = new_node.value
      #binding.pry
      counter
    elsif (new_node.value > current.value) && current.right == nil
      current.right = new_node
      @tree_values << new_node.value
      @depth_of[new_node.value] = counter
      @movies[new_node.title] = new_node.value
      #binding.pry
      counter
    else
      push(new_node, current.right, counter += 1)
      @tree_values << new_node.value
      @depth_of[new_node.value] = counter
      @movies[new_node.title] = new_node.value
      #binding.pry
      counter
    end

  end

   def include?(number)
     @tree_values.include?(number)
      #binding.pry
   end

   def depth_of(value)
     @depth_of[value]
     #binding.pry
   end

   def max
     maxed = @movies.sort_by{|_key, value| value}.pop
     [maxed].to_h
     #binding.pry
   end

   def min
     mined = @movies.sort_by{|_key, value| value}.shift
     [mined].to_h
   end

   def sorted
     sorted = @movies.sort_by{|_key, value| value}
     [sorted].to_h
   end

end
