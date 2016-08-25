require 'linked_list'
require 'minitest/autorun'
require 'minitest/pride'

class LinkedListTest < Minitest::Test

  defntest_a_list_is_created_with_a_node
    list = LinkedList.new("Notorius RBG")

    assert_equal Node, list.head.class
    assert_equal "Notorius RBG", list.head.data
    end

    end
