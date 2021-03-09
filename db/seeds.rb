User.create!([
  { name: "sam", email: "sam@example.com", password_digest: "$2a$12$ezXNyo7S9DyJpc.9PvXkXeEmiAbw8yEBORYTUsjIju8T6kPuKLro6" },
  { name: "tess", email: "tess@example.com", password_digest: "$2a$12$xbyAFp4NidzonQIO1NIvL.weTo8CV4RkjModpg6xQfbn0oz8ZZ7CS" },
])

Dog.create!([
  { name: "mark", age: 3, breed: "golden", user_id: 1 },
  { name: "curren", age: 12, breed: "mutt", user_id: 1 },
  { name: "shadow", age: 5, breed: "black lab", user_id: 1 },
  { name: "Tonko", age: 1, breed: "irish setter", user_id: 1 },
])
