require "minitest/autorun"
require "minitest/pride"
require "./lib/tree.rb"
require "pry"

class TreeTest < Minitest::Test

  def test_it_can_make_a_tree_instance

    tree = Tree.new
    assert_equal Tree, tree.class
    assert_equal nil, tree.root
  end

   def test_insert_into_tree

     tree = Tree.new
     assert_equal 0, tree.insert(61, "Bill & Ted's Excellent Adventure")
     assert_equal 1, tree.insert(16, "Johnny English")
     assert_equal 1, tree.insert(92, "Sharknado 3")
     assert_equal 2, tree.insert(50, "Hannibal Buress: Animal Furnace")
   end

  def test_it_can_verify_the_prescence_of_a_value

    tree = Tree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal true, tree.include?(16)
    assert_equal false, tree.include?(72)
  end

  def test_can_report_the_depth_of_a_node

    tree = Tree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal 1, tree.depth_of(92)

    assert_equal 2, tree.depth_of(50)

  end

  def test_can_it_find_max

    tree = Tree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal ({"Sharknado 3" => 92}), tree.max

  end

  def test_can_it_find_min

    tree = Tree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal ({"Johnny English" => 16}), tree.min
  end

  def test_can_return_sorted_array
    
    tree = Tree.new
        tree.insert(61, "Bill & Ted's Excellent Adventure")
        tree.insert(16, "Johnny English")
        tree.insert(92, "Sharknado 3")
        tree.insert(50, "Hannibal Buress: Animal Furnace")

        assert_equal ([{"Johnny English"=>16},
          {"Hannibal Buress: Animal Furnace"=>50},
          {"Bill & Ted's Excellent Adventure"=>61},
          {"Sharknado 3"=>92}]) , tree.sorted
  end

  def test_can_load_a_file
    skip
    IO.foreach("movies.txt") {|x| print "GOT", x }

  end
end
