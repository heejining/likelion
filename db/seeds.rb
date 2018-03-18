# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


categories = [
    "Graphic Design",
    "Photography",
    "Illustration",
    "Architecture (Furniture & Fixtures)",
    "Product Design",
    "Fashion",
    "Fine Arts",
    "Craft",
    "Video & Entertainment",
    "Music",
]

categories.each do |c|
    Category.create({ name: c })    
end


# User.create({})