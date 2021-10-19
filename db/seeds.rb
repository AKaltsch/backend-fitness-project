# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "begin seeding...."

puts "seeding users..."
alec = User.create( name: "Alec", username: "akaltsch", password: "password123")
marc = User.create( name: "Marc", username: "majcher", password: "password123")

puts "seeding posts..."
post1 = Post.create( title: "Alec's first post", body: "Making my first post...", user_id: alec.id)
post2 = Post.create( title: "Alec's second post", body: "Making my second post...", user_id: alec.id)
post3 = Post.create( title: "Marc's first post", body: "Making my first post...", user_id: marc.id)
post4 = Post.create( title: "Marc's second post", body: "Making another post...", user_id: marc.id)

puts "seeding workouts..."
workout1 = Workout.create( name: "Monday workout", workout_type: "cardio")
workout2 = Workout.create( name: "Tuesday workout", workout_type: "weight lifting")
workout3 = Workout.create( name: "Wednesday workout", workout_type: "cardio")
workout4 = Workout.create( name: "Thursday workout", workout_type: "weight lifting")
workout5 = Workout.create( name: "Friday workout", workout_type: "cardio")

puts "seeding exercises..."
benchpress = Exercise.create( name: "benchpress", description: nil, image_url: nil, exercise_type: "weighted", workout_id: workout2.id, user_id: marc.id)
swimming = Exercise.create( name: "swimming", description: nil, image_url: nil, exercise_type: "cardio", workout_id: workout1.id, user_id: alec.id)
deadlift = Exercise.create( name: "deadlift", description: nil, image_url: nil, exercise_type: "weighted", workout_id: workout2.id, user_id: marc.id)
running = Exercise.create( name: "running", description: nil, image_url: nil, exercise_type: "cardio", workout_id: workout1.id, user_id: alec.id)

puts "seeding data entries"
entry1 = DataEntry.create(exercise_id: benchpress.id, sets: 3, reps: 10, weight: 135, distance: nil, time: nil)
entry2 = DataEntry.create(exercise_id: benchpress.id, sets: 3, reps: 10, weight: 185, distance: nil, time: nil)
entry3 = DataEntry.create(exercise_id: swimming.id, sets: nil, reps: nil, weight: nil, distance: 2, time: 40)
entry4 = DataEntry.create(exercise_id: swimming.id, sets: nil, reps: nil, weight: nil, distance: 2, time: 35)
entry5 = DataEntry.create(exercise_id: deadlift.id, sets: 3, reps: 8, weight: 225, distance: nil, time: nil)
entry6 = DataEntry.create(exercise_id: deadlift.id, sets: 3, reps: 8, weight: 275, distance: nil, time: nil)
entry7 = DataEntry.create(exercise_id: running.id, sets: nil, reps: nil, weight: nil, distance: 5, time: 40)
entry8 = DataEntry.create(exercise_id: running.id, sets: nil, reps: nil, weight: nil, distance: 6, time: 38)

puts "seeding complete"
