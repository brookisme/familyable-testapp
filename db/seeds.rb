# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def names
  [
    "Rochelle Navin",
    "Emmitt Livermore",
    "Dawn Kyler",
    "Earle Arjona",
    "Ellis Reese",
    "Hsiu Freitas",
    "Lang Mott",
    "Cherlyn Mccorkle",
    "Tinisha Dunfee",
    "Diamond Metcalf",
    "Leanora Studley",
    "Glennie Schecter",
    "Ariel Shahid",
    "Denver Royce",
    "Gregory Maples",
    "Darla Belanger",
    "Sheila Murch",
    "Randal Manzanares",
    "Isreal Riche",
    "Lorena Tar"
  ]
end

def genPerson
  Person.create(
    name: names.sample,
    age: (11..79).to_a.sample,
    nice: (rand() > 0.3 ? true : false)
  )
end

def genGeneration(elders=nil)
  generation = []
  if elders.blank?
    num_people = 20
  else
    num_people = ( elders.length * ((3..6).to_a.sample) )
  end
  num_people.times do
    p = genPerson
    generation.push(p)
    unless elders.blank?
      elders.sample.children << p
    end
  end
  generation
end

def genGenerations(num_generations)
  elders = nil
  num_generations.times do |i|
    puts "gen #{i}..."
    elders = genGeneration(elders)
  end
end

puts "--begin seeding--"
genGenerations(5)
puts "--seeding complete--"

