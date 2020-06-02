10.times do
  title = Faker::Lorem.word
  content = Faker::Lorem.sentences(number: rand(1..3)).join("\n")
  Blog.create(
    title: title,
    content: content
  )
end
