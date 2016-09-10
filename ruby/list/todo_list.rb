class TodoList
  attr_reader :get_items


  def initialize(arr)
    @get_items = arr
  end

  def add_item(str)
    @get_items << str
  end

  def delete_item(str)
    @get_items.delete(str)
  end

  def get_item(int)
    @get_items[int]
  end

end

# first_list=TodoList.new([1,2])
# first_list.get_items