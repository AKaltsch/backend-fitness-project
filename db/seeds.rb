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
mile1 = Mile.create( time: 835, user_id: alec.id)
mile2 = Mile.create( time: 800, user_id: alec.id)
mile3 = Mile.create( time: 1030, user_id: alec.id)
mile4 = Mile.create( time: 915, user_id: alec.id)
mile5 = Mile.create( time: 730, user_id: alec.id)
mile6 = Mile.create( time: 645, user_id: joe.id)
mile7 = Mile.create( time: 715, user_id: joe.id)
mile8 = Mile.create( time: 559, user_id: joe.id)
mile9 = Mile.create( time: 925, user_id: joe.id)
mile10 = Mile.create( time: 745, user_id: joe.id)



puts "seeding complete"
