# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 20.times do |index|
#     User.create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, username: Faker::Internet.user_name, password: Faker::Internet.password)
#     end

    # 20.times do |index|
    # Instructor.create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, course_name: Faker::Educator.course, course_id: Faker::Number.between(1, 20), cohort_id: Faker::Number.between(1, 60), salary: Faker::Number.between(30000, 90000))
    # end

    100.times do |index|
        Student.create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, d_o_b: Faker::Date.birthday(18, 28), cohort_id: Faker::Number.between(3, 21), course_id: Faker::Number.between(3, 21))
    end