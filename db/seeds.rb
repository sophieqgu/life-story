user_list = [
  ["sophieqgu", "sophieqgu@gmail.com", "000000"],
  ["burtiecutie", "burtieonthego@gmail.com", "111111"]
]

user_list.each do |username, email, password|
  User.create(username: username, email: email, password: password)
end 

category_list = [
  "Love",
  "Fiendship",
  "Family",
  "Health",
  "Birth",
  "Death",
  "Work",
  "Studies",
  "Passions"
  ]

category_list.each do |name|
  Category.create(name: name)
end 

story_list = [
  ["completed the Sinatra Project", 2020-1-20, "I am exhausted but it's totally worth it!", 8]
  ]

story_list.each do |summary, date, description, category_id| 
  Story.create(summary: summary, date: date, description: description, category_id: category_id)
end 