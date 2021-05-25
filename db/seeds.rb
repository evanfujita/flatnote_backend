User.destroy_all
Note.destroy_all

user1 = User.create(username: 'evan', password: 'abc', password_confirmation: 'abc')
user2 = User.create(username: 'madelinebeck', password: 'abc', password_confirmation: 'abc')
user3 = User.create(username: 'winston', password: 'abc', password_confirmation: 'abc')

note1 = Note.create(title: 'first', body: 'Hello World', user_id: 1)
note2 = Note.create(title: 'second', body: 'Hello World Hello World', user_id: 1)
note3 = Note.create(title: 'third', body: 'Hola World', user_id: 2)
note4 = Note.create(title: 'meow', body: 'Meow World', user_id: 3)
note5 = Note.create(title: 'meow2', body: 'Meow World Meow', user_id: 3)

task1 = Task.create(title: '1', body: 'Groceries', completed: false, user_id: 1)
task2 = Task.create(title: '2',body: 'Homework', completed: false, user_id: 1)
task3 = Task.create(title: '3', body: 'Do the dishes', completed: false, user_id: 2)
task4 = Task.create(title: '4', body: 'Eat', completed: false, user_id: 3)
task5 = Task.create(title: '5', body: 'Meow World Meow', completed: false, user_id: 3)