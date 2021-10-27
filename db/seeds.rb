# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "begin seeding...."

puts "seeding users..."
alec = User.create( username: "akaltsch", password: "password123", bio: "this is my bio!", profile_pic: "https://tse2.mm.bing.net/th?id=OIP.Om5K-sqJzNERlcoeGCm_RQHaFj&pid=Api&P=0&w=239&h=179")
joe = User.create( username: "schmoe", password: "password123", bio: "this is Joe Schmoes bio!!", profile_pic: "https://tse4.mm.bing.net/th?id=OIP.Lg8wESPVvRlTfj0eclaUwwHaFZ&pid=Api&P=0&w=228&h=166")

puts "seeding benchpress..."
bench1 = Benchpress.create( weight: 175, user_id: alec.id)
bench2 = Benchpress.create( weight: 160, user_id: alec.id)
bench3 = Benchpress.create( weight: 185, user_id: alec.id)
bench4 = Benchpress.create( weight: 200, user_id: alec.id)
bench5 = Benchpress.create( weight: 190, user_id: alec.id)
bench6 = Benchpress.create( weight: 135, user_id: joe.id)
bench7 = Benchpress.create( weight: 160, user_id: joe.id)
bench8 = Benchpress.create( weight: 115, user_id: joe.id)
bench9 = Benchpress.create( weight: 170, user_id: joe.id)
bench10 = Benchpress.create( weight: 140, user_id: joe.id)

puts "seeding squats..."
squat1 = Squat.create( weight: 225, user_id: alec.id)
squat2 = Squat.create( weight: 245, user_id: alec.id)
squat3 = Squat.create( weight: 205, user_id: alec.id)
squat4 = Squat.create( weight: 275, user_id: alec.id)
squat5 = Squat.create( weight: 200, user_id: alec.id)
squat6 = Squat.create( weight: 185, user_id: joe.id)
squat7 = Squat.create( weight: 200, user_id: joe.id)
squat8 = Squat.create( weight: 160, user_id: joe.id)
squat9 = Squat.create( weight: 215, user_id: joe.id)
squat10 = Squat.create( weight: 180, user_id: joe.id)

puts "seeding distances..."
distance1 = Distance.create( distance: 2.0, user_id: alec.id)
distance2 = Distance.create( distance: 3.5, user_id: alec.id)
distance3 = Distance.create( distance: 3.2, user_id: alec.id)
distance4 = Distance.create( distance: 5.6, user_id: alec.id)
distance5 = Distance.create( distance: 1.5, user_id: alec.id)
distance6 = Distance.create( distance: 4.1, user_id: joe.id)
distance7 = Distance.create( distance: 3.5, user_id: joe.id)
distance8 = Distance.create( distance: 6.3, user_id: joe.id)
distance9 = Distance.create( distance: 5.0, user_id: joe.id)
distance10 = Distance.create( distance: 2.2, user_id: joe.id)

puts "seeding miles..."
mile1 = Mile.create( time: 8.5, user_id: alec.id)
mile2 = Mile.create( time: 8.0, user_id: alec.id)
mile3 = Mile.create( time: 10.5, user_id: alec.id)
mile4 = Mile.create( time: 9.25, user_id: alec.id)
mile5 = Mile.create( time: 7.75, user_id: alec.id)
mile6 = Mile.create( time: 6.5, user_id: joe.id)
mile7 = Mile.create( time: 7.25, user_id: joe.id)
mile8 = Mile.create( time: 6.0, user_id: joe.id)
mile9 = Mile.create( time: 9.7, user_id: joe.id)
mile10 = Mile.create( time: 7.45, user_id: joe.id)

puts "seeding hikes...."
hike1 = Hike.create( title: "Crystal Springs", description: "Hike by the water", lat: "37.517827080328686", lng: "-122.3361935715332", image_url: "https://tse2.mm.bing.net/th?id=OIP.s3WQtTOXGDS_byrk_bKr4AHaHa&pid=Api&P=0&w=172&h=172", user_id: alec.id)

hike2 = Hike.create( title: "CSM", description: "Hike by the water", lat: "37.46388998463912", lng: "-122.33138705297851", image_url: "https://tse2.mm.bing.net/th?id=OIP.iRlBTD4xyvZCpjHHjAPqagHaE8&pid=Api&P=0&w=269&h=180", user_id: alec.id)

# :id, :title, :description, :lat, :lng, :image_url, :user_id

puts "seeding complete"
