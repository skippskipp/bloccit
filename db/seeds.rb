require 'random_data'

# Create Topics
15.times do
  Topic.create!(
  name: RandomData.random_sentence,
  description: RandomData.random_paragraph
  )
end
topics = Topic.all

#Create Ads
50.times do
  Advertisement.create!(
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph,
  price: RandomData.random_integer
  )
end
advertisements = Advertisement.all

#Create questions
50.times do
  Question.create!(
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph,
  resolved: false
  )
end
questions = Question.all

#Create Posts
50.times do
  Post.create!(
  topic: topics.sample,
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph
  )
end
posts = Post.all

#Create Sponsored Posts
50.times do
  SponsoredPost.create!(
  topic: topics.sample,
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph,
  price: RandomData.random_integer
  )
end
sponsored_posts = SponsoredPost.all

# Create Comments
100.times do
  Comment.create!(
  post: posts.sample,
  body: RandomData.random_paragraph
  )
end

# Find a Post titled Maynard, or create a new one
mypost = Post.find_or_create_by!(title: 'Jimmy Under a Dead Ohio Sky') do |post|
  post.body = 'Defending his light and wondering, Where the hell have I been? Sleeping lost in the mud. So glad that I have found you. I am wide awake and heading Home'
end

Comment.find_or_create_by!(body: 'Eleven has been and will be waiting', post: mypost)

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{SponsoredPost.count} sponsored posts created"
puts "#{Comment.count} comments created"
puts "#{Advertisement.count} ads created"
puts "#{Question.count} questions created"
