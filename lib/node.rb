class Node
  attr_accessor :value, :title, :left, :right

  def initialize(value, title)
    @value = value
    @title = title
    @right = nil
    @left = nil
  end


end
