# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create! [
	{ login: "xyz123", password: "123456" },
	{ login: "abc213", password: "78965"},
	{ login: "hjk819", password: "67382"}
]

Account.create! [
	{ first_name: "Mike", last_name: "Block", age: 27, gender: "male", user_id: 1},
	{ first_name: "Nat", last_name: "Foster", age: 24, gender: "male", user_id: 2},
	{ first_name: "Tom", last_name: "Mucci", age: 23, gender: "female", user_id: 3}	
]

TodoList.create! [
	{ list_name: "Vacation to Florida", list_due_date: '2021-03-21', user_id: 1},
	{ list_name: "Grad School", list_due_date: '2022-06-20', user_id: 2},
	{ list_name: "Business Trip", list_due_date: '2021-04-13', user_id: 2},
	{ list_name: "Workout Plan", list_due_date: '2021-05-04', user_id: 3}
]

TodoItem.create! [
	{ due_date: '2021-03-18', task_title: "Book plane ticket", description: "book online", TodoList_id: 1},
	{ due_date: '2021-03-20', task_title: "Book Rental car", description: "book online", TodoList_id: 1},
	{ due_date: '2021-03-15', task_title: "Schedule classes", description: "make schedule", TodoList_id: 2},
	{ due_date: '2022-06-15', task_title: "Graduate", description: "get degree", TodoList_id: 2},
	{ due_date: '2021-04-13', task_title: "make expense report", description: "make expense report", TodoList_id: 3},
	{ due_date: '2021-01-01', task_title: "Make workout plan", description: "create plan", TodoList_id: 4},
	{ due_date: '2021-05-04', task_title: "Execute workout plan", description: "get in good shape", TodoList_id: 4}
]

Tag.create! [
	{ tag_name: "travel", TodoItem_id: 1},
	{ tag_name: "travel", TodoItem_id: 2},
	{ tag_name: "travel", TodoItem_id: 5},
	{ tag_name: "school", TodoItem_id: 3},
	{ tag_name: "school", TodoItem_id: 4},
	{ tag_name: "health", TodoItem_id: 6},
	{ tag_name: "health", TodoItem_id: 7}
]