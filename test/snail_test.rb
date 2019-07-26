require "./test_helper"

class SnailTest < MiniTest::Test
  def setup
    matrix = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
    @snail = Snail.new("Seymour", matrix)
  end

  def test_snail_exists
    assert_instance_of Snail, @snail
  end

  def test_snail_has_attributes
    test_matrix = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
    assert_equal "Seymour", @snail.name
    assert_equal test_matrix, @snail.matrix
  end

  def test_snail_starts_with_empty_array
    assert_equal [], @snail.array
  end

  def test_get_top_row
    test_array = [1,2,3]
    new_matrix = [
      [4, 5, 6],
      [7, 8, 9]
    ]
    assert_equal test_array, @snail.get_top_row
    assert_equal test_array, @snail.array
    assert_equal new_matrix, @snail.matrix
  end

  def test_get_last_elements
    test_array = [3,6,9]
    new_matrix = [
      [1, 2],
      [4, 5],
      [7, 8]
    ]
    assert_equal test_array, @snail.get_last_elements
    assert_equal test_array, @snail.array
    assert_equal new_matrix, @snail.matrix
  end

  def test_get_bottom_row
    test_array = [9, 8, 7]
    new_matrix = [
      [1, 2, 3],
      [4, 5, 6]
    ]
    assert_equal test_array, @snail.get_bottom_row
    assert_equal test_array, @snail.array
    assert_equal new_matrix, @snail.matrix
  end

  def test_get_first_elements
    test_array = [7,4,1]
    new_matrix = [
      [2, 3],
      [5, 6],
      [8, 9]
    ]
    assert_equal test_array, @snail.get_first_elements
    assert_equal test_array, @snail.array
    assert_equal new_matrix, @snail.matrix
  end

  def test_get_array
    test_array = [1, 2, 3, 6, 9, 8, 7, 4, 5]
    assert_equal test_array, @snail.get_array
    assert_equal [], @snail.matrix
  end

  def test_get_array_on_bigger_array
    matrix = [
      [1, 2, 3, 4, 5],
      [4, 5, 6, 7, 8],
      [7, 8, 9, 1, 2],
    ]
    test_array = [1,2,3,4,5,8,2,1,9,8,7,4,5,6,7]
    snail = Snail.new("Clarice",matrix)
    assert_equal test_array, snail.get_array
  end

  def test_get_array_on_even_bigger_array
    matrix = [
      [1, 2, 3, 4, 5, 6, 8],
      [4, 5, 6, 7, 8, 2, 5],
      [7, 8, 9, 1, 2, 2, 7],
      [7, 8, 9, 1, 2, 2, 7],
    ]
    test_array = [1,2,3,4,5,6,8,5,7,7,2,2,1,9,8,7,7,4,5,6,7,8,2,2,2,1,9,8]
    snail = Snail.new("Clarice",matrix)
    assert_equal test_array, snail.get_array
  end
end
