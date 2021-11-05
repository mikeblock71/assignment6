require_relative '../config/environment'

item = TodoItem.find(1)
itemList = TodoList.find(item.TodoList_id)
user = User.find(itemList.user_id)

p "TODO ITEM: "
p item
p
p "USER: "
p user


#Account.create! [
#	{ first_name: "alex", last_name: "smith", age: 19, gender: "test", user_id: 1},
#]

p TodoList.select(:list_due_date)
p TodoItem.select(:due_date)