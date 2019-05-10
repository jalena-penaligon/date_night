require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/binary_search_tree'
require './lib/node'

class BinarySearchTreeTest < Minitest::Test

  def test_insert_adds_node_to_rootnode
    tree = BinarySearchTree.new
    assert_equal 0, tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 61, tree.rootnode.value
  end

  def test_insert_adds_node_of_lesser_value_and_returns_depth
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 1, tree.insert(16, "Johnny English")
    assert_equal 16, tree.rootnode.left_node.value
  end

  def test_insert_adds_node_of_greater_value_and_returns_depth
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    assert_equal 1, tree.insert(92, "Sharknado 3")
    assert_equal 92, tree.rootnode.right_node.value
  end

  def test_insert_adds_node_to_2nd_level_depth
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")

    assert_equal 2, tree.insert(50, "Hannibal Buress: Animal Furnace")
    assert_equal 50, tree.rootnode.right_node.left_node.value
  end

end
