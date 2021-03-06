User.destroy_all
Note.destroy_all

user1 = User.create(username: 'evanfujita')
user2 = User.create(username: 'madelinebeck')

note1 = Note.create(title: 'first', body: 'Hello World', user_id: 1)
note2 = Note.create(title: 'second', body: 'Hello World Hello World', user_id: 1)
note3 = Note.create(title: 'third', body: 'Hola World', user_id: 2)