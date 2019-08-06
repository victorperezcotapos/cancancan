# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
User.destroy_all
Comment.destroy_all

10.times do |i|
  u = User.create!(name: "User #{i}", email: "email#{i}@gmail.com", password: "#{i}#{i}#{i}#{i}#{i}#{i}", role: 1)
  p = Post.create!(title: "post #{i}", content: "content #{i}", user: u)
  10.times do |j|
    c = Comment.create(content: "comentario #{j} del post #{i}", post: p, user: u)
    c.save!
  end
end
u = User.create!(name: "Admin", email: "email@gmail.com", password: "aaaaaa", role: 0)
