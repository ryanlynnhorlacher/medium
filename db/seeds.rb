# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.all 
users.each do |user|
	10.times do |number|
	Post.create(title: 'How do you feel about that?', content: 'I am typing a bunch of stuff to make it look like we have a lot more conten than we actually do.  We need to be able to see what it looks like when there is something long in here.', user_id: user.id)
	end
end
puts 'Post has been seeded.'