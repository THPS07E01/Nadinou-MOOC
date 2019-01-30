require 'faker'
require 'colorize'

emoticons = ["\u{1F648}", "\u{1F63B}", "\u{1F48B}", "\u{1F4A4}", "\u{1F476}", "\u{1F412}", "\u{1F984}", "\u{1F42E}", "\u{1F423}", "\u{1F427}", "\u{1F986}", "\u{1F438}", "\u{1F433}", "\u{1F419}", "\u{1F98B}", "\u{1F40C}", "\u{1F41E}", "\u{1F33E}", "\u{1F33E}", "\u{1F34C}", "\u{1F965}", "\u{1F955}", "\u{1F35F}", "\u{1F35F}", "\u{1F32E}"]

puts `clear`
puts "











                                                        Remise à zéro de la base de données.\n".green.blink
Course.destroy_all
Lesson.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'courses'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'lessons'")
puts `clear`

puts "

                                          Ok en voiture Simone, c'est parti pour l'initialisation de la base de données\n\n"

30.times do |i|
  course = Course.create!(title: Faker::WorldOfWarcraft.quote, description: Faker::TheFreshPrinceOfBelAir.quote)
  if i+1 == 30
    puts " #{i + 1} courses created.\n\n"
  elsif i != 0 && i % 3 == 0
    print emoticons.sample
  else
    print '.'
  end
end

120.times do |j|
  lesson = Lesson.create!(title: Faker::SwordArtOnline.item, body: Faker::StarWars.quote, course_id: rand(1..30))
  if j+1 == 120
    puts " #{j + 1} lessons created.\n\n"
  elsif j != 0 && j % 3 == 0
    print emoticons.sample
  else
    print '.'
  end
end

puts "Merci d'avoir patienté\nPour te remercier"
puts "Photo non contractuelle, dans la limite des stocks disponibles.\n\n\n\n"
