require_relative 'linked_list'
require_relative "node"
require 'minitest/autorun'
require 'minitest/pride'

class LinkedListTest < Minitest::Test

  def test_a_list_is_created_with_a_node
    list = LinkedList.new("Notorious RBG")

    assert_equal Node, list.head.class
    assert_equal "Notorious RBG", list.head.data
    end

    end
