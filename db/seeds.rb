puts "🌱 Seeding spices..."

# Seed your database here
#Lists
List.create(title: "Wednesdays Task", deadline: "Wednesday night")
List.create(title: "Thursdays Task", deadline: "Thursday night")


#Tasks
Task.create(description: "Picking up baby formula", completed: false, priority: 5, list: List.all.sample)
Task.create(description: "Getting gas", completed: 2, list: List.all.sample)
Task.create(description: "check out game Johnny told me about, Rotano", priority: 1, list: List.all.sample)
Task.create(description: "go to the gym", priority: 4, list: List.all.sample)
Task.create(description: "watch a movie", priority: 1)



puts "✅ Done seeding!"
