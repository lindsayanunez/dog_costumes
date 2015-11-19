require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test "category attributes must not be empty" do
    category = Category.new
    assert_not category.save, "saved category WITH EMPTY ATTRIBUTES"
  end

  test "category name should be unique" do
    category = Category.new
    category.name = categories(:one).name
    assert_not category.save, " saved category with non-unique name:"
  end

  test "category saves with all valid attributes" do
    category = Category.new(name: "unique_category")
    assert category.save, "category wasn't saved with valid attributes supplied"
  end
end
