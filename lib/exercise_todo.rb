# File: lib/exercise_todo.rb
class ToDo ()
  def initialize
    @list = Array.new
    @complete = Array.new
  end

  def additem(list_item)
    @list << list_item
  end

  def printlist
    temp_list = []

    @list.each_with_index { |item, index|
      temp_list << "#{index + 1}. #{item}"
    }
    if @list == []
      return "List Empty!"
    else
      return temp_list.join("\n")
    end
  end

  def markcomplete(list_item)
    index_to_delete = @list.find_index(list_item)
    @complete << @list[index_to_delete]
    @list.delete_at(index_to_delete)
  end

  def printcomplete
    return @complete.join("\n")
  end
end