# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
2.times do |i|
  user = User.new(email: "#{i}_email@gmail.com", first_name: "#{i}_first", last_name: "#{i}_last")
  user.save!(validate: false)

  1.times do |j|
    post = Post.create(body: "#{i}_#{j} This is a post", user_id: user.id)
    comment = Comment.create(body: "#{i}_#{j} This is a comment on a post", user_id: user.id)
    CommentOnPost.create(post_id: post.id, comment_id: comment.id)
  end

end
