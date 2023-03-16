# File: lib/exercise_todo_spec.rb
require 'exercise_todo'

RSpec.describe ToDo do
  it "adds single item to list, returns list" do
    list = ToDo.new
    list.additem("Buy Milk")
    expect(list.printlist).to eq "1. Buy Milk"
  end

  it "adds two items to list, returns list" do
    list = ToDo.new
    list.additem("Buy Milk")
    list.additem("Buy Sugar")
    expect(list.printlist).to eq "1. Buy Milk\n2. Buy Sugar"
  end

  it "adds three items, removes second one, prints list" do
    list = ToDo.new
    list.additem("Buy Milk")
    list.additem("Buy Lamborghini")
    list.additem("Buy Sugar")
    list.markcomplete("Buy Lamborghini")
    expect(list.printlist).to eq "1. Buy Milk\n2. Buy Sugar"
  end

  it "creates empty list, prints 'list empty'" do
    list = ToDo.new
    expect(list.printlist).to eq "List Empty!"
  end

  it "adds five items, marks 3 complete, prints complete list" do
    list = ToDo.new
    list.additem("Buy Milk")
    list.additem("Buy Lamborghini")
    list.additem("Buy Sugar")
    list.additem("Buy Bread for Ducks")
    list.additem("Learn Ruby")
    list.markcomplete("Buy Lamborghini")
    list.markcomplete("Buy Sugar")
    list.markcomplete("Buy Milk")
    expect(list.printcomplete).to eq "Buy Lamborghini\nBuy Sugar\nBuy Milk"
  end
end