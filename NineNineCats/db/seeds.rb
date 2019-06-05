# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

COLORS = ["brown", "orange", "black", "blue"]
SEX = ['M', 'F']

ActiveRecord::Base.transaction do

  Cat.destroy_all

  20.times do
    Cat.create(name: Faker::Creature::Cat.name, birth_date: Faker::Date.birthday(18, 65), color: COLORS.sample, sex: SEX.sample, description: Faker::Hipster.paragraph)
  end

  # CatRentalRequest.destroy_all
  
  # CatRentalRequest.create(cat_id: Cat.all[0].id, start_date: '2019/04/01', end_date: '2019/04/14')
  # CatRentalRequest.create(cat_id: Cat.all[0].id, start_date: '2019/04/15', end_date: '2019/04/30')
  # CatRentalRequest.create(cat_id: Cat.all[0].id, start_date: '2019/04/25', end_date: '2019/05/14')
  
end


