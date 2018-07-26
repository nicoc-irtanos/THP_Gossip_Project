require 'faker'

10.times do |city|
  city = City.create(name: Faker::Address.city, postal_code: Faker::Address.zip_code)
end

10.times do |user|
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::ChuckNorris.fact, email: Faker::Internet.free_email, age: rand(13..100), city_id: City.all.sample.id)
end

10.times do |tag|
  tag = Tag.create(title: Faker::LordOfTheRings.character)
end

20.times do |gossip|
  gossip = Gossip.create(title: Faker::Food.dish, content: Faker::Food.description, date: Faker::Time.between(DateTime.now - 1, DateTime.now), user_id: User.all.sample.id, tag_id: Tag.all.sample.id)
end

5.times do |tag|
  tag = Tag.create(title: Faker::LeagueOfLegends.location, gossip_id: Gossip.all.sample.id)
end

20.times do |comment|
  comment = Comment.create(content: Faker::Movie.quote, user_id: User.all.sample.id, gossip_id: Gossip.all.sample.id)
end

20.times do |like|
  r = rand(1..2)
    if r == 1
      like = Like.create!(user_id: User.all.sample.id, comment_id: Comment.all.sample.id)
    else
      like = Like.create!(user_id: User.all.sample.id, gossip_id: Gossip.all.sample.id)
  end
end
