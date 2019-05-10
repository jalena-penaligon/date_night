class Node
  attr_reader :value, :title
  attr_accessor :left_node, :right_node

  def initialize(value, title)
    @value = value
    @title = title
    left_node = nil
    right_node = nil
  end

end
