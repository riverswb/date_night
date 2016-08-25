require_relative 'node'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test
    def test_node_hold_data
      node = Node.new("comcast sucks")

      assert_equal "comcast sucks", node.data
    end

def test_node_starts_with_no_link
  node = Node.new("comcast sucks")

  assert_equal nil, node.link
end
  end
