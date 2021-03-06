# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MEN_IMG_URL = "https://res.cloudinary.com/wafflewitch/image/upload/v1500038735/"

MEN_PICS = ["user4.jpg", "user0.jpg", "user3.jpg", "user7.jpg", "user6.jpg", "user2.jpg"]

WOMEN_IMG_URL = "https://res.cloudinary.com/wafflewitch/image/upload/v150003873"

WOMEN_PICS = ["6/user16.jpg", "6/user15.jpg", "6/user14.jpg", "6/user13.png", "5/user10.jpg", "5/user11.jpg"]

USER_IDS = []

MEN_PICS.length.times do |pic|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  user = User.create!(
          first_name: first_name,
          last_name: last_name,
          email: "#{first_name}_#{last_name}@email.com",
          password: "coolcat",
          picture: MEN_IMG_URL + MEN_PICS[pic]
          )
  if user.save
    USER_IDS << user[:id]
  end
end

WOMEN_PICS.length.times do |pic|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  user = User.create!(
          first_name: first_name,
          last_name: last_name,
          email: "#{first_name}_#{last_name}@email.com",
          password: "coolcat",
          picture: WOMEN_IMG_URL + WOMEN_PICS[pic]
          )
  if user.save
    USER_IDS << user[:id]
  end
end

event_1 = Event.new(
    user_id: USER_IDS.sample,
    name: "Go play Breakout Birmingham!",
    desc: "Come play a fun puzzle game at Breakout Birmingham! I really want to try the haunted house one!",
    address: "2717 19th Place S, Homewood, AL",
    start_time: Faker::Time.forward(2, :afternoon),
    end_time: Faker::Time.forward(2, :night),
    exp: Faker::Time.forward(2, :morning),
    max_members: 10,
    members: [USER_IDS.sample, USER_IDS.sample, USER_IDS.sample]
    )
event_1.save!

event_2 = Event.new(
    name: "Hike on Red Mountain Trail",
    desc: "Let's go hike on the beautiful Red Mountain! Remember your sunscreen and bugspray.",
    address: "2011 Frankfurt Dr, Birmingham, AL",
    user_id: USER_IDS.sample,
    start_time: Faker::Time.forward(2, :afternoon),
    end_time: Faker::Time.forward(2, :night),
    exp: Faker::Time.forward(2, :morning),
    max_members: 10,
    members: [USER_IDS.sample, USER_IDS.sample, USER_IDS.sample]
    )
event_2.save!

event_3 = Event.new(
    name: "Grab drinks at Good People",
    desc: "Hey, let's grab a beer and chill, maybe walk around Rail Road Park.",
    address: "114 14th St S, Birmingham, AL",
    user_id: USER_IDS.sample,
    start_time: Faker::Time.forward(2, :afternoon),
    end_time: Faker::Time.forward(2, :night),
    exp: Faker::Time.forward(2, :morning),
    max_members: 10,
    members: [USER_IDS.sample, USER_IDS.sample, USER_IDS.sample]
    )
event_3.save!

event_4 = Event.new(
    name: "Get Tea at BBCMS",
    desc: "Cute little tea and crystals shop! Delicious tea, coffee, milkshakes. Also interesting books.",
    address: "1620 Richard Arrington Jr Blvd S, Birmingham, AL",
    user_id: USER_IDS.sample,
    start_time: Faker::Time.forward(2, :afternoon),
    end_time: Faker::Time.forward(2, :night),
    exp: Faker::Time.forward(2, :morning),
    max_members: 10,
    members: [USER_IDS.sample, USER_IDS.sample, USER_IDS.sample]
    )
event_4.save!
