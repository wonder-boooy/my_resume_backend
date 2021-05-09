# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
begin
  post = Post.count
  if post < 10
    (10 - post).times do |i|
      Post.create!(
        title: "title_#{i}",
        body: "body_#{i}"
      )
    end
  end
rescue => e
  puts "========== Error! =========="
  puts e.message
ensure
  puts "********** Finished Seed. **********"
  puts "Post: #{Post.count}records"
end
