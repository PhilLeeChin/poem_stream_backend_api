# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

anger = Genre.create(name: "Anger")
sad = Genre.create(name: "Sad")
happy = Genre.create(name: "Happy")
dispair = Genre.create(name: "Dispair")

poems = Poem.create(
    [
        {title: 'Emotionless', lines: 'A void between two worlds that darkness sit, no pain, no happiness, no saddness.', genre_id: dispair.id},
        {title: 'Giving up', lines: 'A choice, a feeling, some say it is destiny, some say it is faith .... is it not the same thing.', genre_id: dispair.id},
        {title: 'Admiration', lines: 'As I visualize your design, your ambitious, and motivated, just a few quailties that makes you who you are.', genre_id: happy.id},
        {title: 'Tree', lines: 'Strong yet vulnerable, nurished by water and sunlight, but still needs love and care.', genre_id: sad.id}
    ]
)

# poem_objs.each {|hash| Poem.create(hash)}