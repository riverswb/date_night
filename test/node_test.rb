require "./lib/node.rb"                # ~> LoadError: cannot load such file -- ./lib/node.rb
require "minitest/autorun"
require "minitest/pride"

class NodeTest < Minitest::Test
  def test_node_can_be_created
    node = Node.new(93, "Silence of the Lambs")

    assert_equal Node, node.class
    assert_equal "Silence of the Lambs", node.title
    assert_equal 93, node.value
  end

  def test_node_can_hold_new_data
    node = Node.new(10, "Twilight")

    assert_equal "Twilight", node.title
    assert_equal 10, node.value
  end

  def test_next_node_is_nil_by_default
    node = Node.new(15, "Starship Troopers")

    assert_equal nil, node.left
    assert_equal nil, node.right
  end

end



# ~> LoadError
# ~> cannot load such file -- ./lib/node.rb
# ~>
# ~> /Users/brettrivers/.rvm/rubies/ruby-2.3.0/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/brettrivers/.rvm/rubies/ruby-2.3.0/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/brettrivers/turing/1module/date_night/test/date_night_test.rb:1:in `<main>'
