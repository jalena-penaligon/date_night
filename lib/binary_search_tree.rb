class BinarySearchTree
  attr_reader :rootnode
  def initialize
    @rootnode = nil
  end

  def insert(node = @rootnode, value, title)
    new_node = Node.new(value, title)
    if tree_empty?
      @rootnode = new_node
      return 0
    elsif !tree_empty? && node.value > value
      if node.left_node == nil
        node.left_node = new_node
      else
        next_node = node.left_node
        insert(node = next_node, value, title)
      end
      return count("left")
    elsif  !tree_empty? && node.value < value
      if node.right_node == nil
        node.right_node = new_node
      else
        next_node = node.right_node
        insert(node = next_node, value, title)
      end
      return count("right")
    end
  end

  def tree_empty?
    @rootnode == nil
  end

  def count(direction, total_count = 0, node = @rootnode)
    if direction = "right"
      if node.right_node != nil
        total_count += 1
        next_node = node.right_node
        count(direction = "right", total_count = total_count, node = next_node)
      else
        return total_count
      end
    else direction = "left"
      if node.left_node != nil
        total_count += 1
        next_node = node.left_node
        count(direction = "left", total_count = total_count, node = next_node)
      else
        return total_count
      end
    end
  end
end
