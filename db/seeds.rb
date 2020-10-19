# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reminder.destroy_all
Note.destroy_all
Job.destroy_all 
User.destroy_all
Reminder.reset_pk_sequence
Note.reset_pk_sequence
Job.reset_pk_sequence 
User.reset_pk_sequence


eric = User.create!(first_name: 'eric', last_name: 'kim', password: 'abc123', email: 'eric@email.com')
sylwia = User.create!(first_name: 'sylwia', last_name: 'vargas', password: 'abc123', email: 'sylwia@email.com')

job1 = Job.create!(company_name: 'cisco', url: 'cisco.com', status: 'not applied', user: eric)
job2 = Job.create!(company_name: 'cisco', url: 'cisco.com', status: 'not applied', user: sylwia)
job3 = Job.create!(company_name: 'hulu', url: 'hulu.com', status: 'not applied', user: eric)
job4 = Job.create!(company_name: 'hulu', url: 'hulu.com', status: 'not applied', user: sylwia)
job5 = Job.create!(company_name: 'spotify', url: 'spotify.com', status: 'not applied', user: sylwia)

note1 = Note.create!(content: 'application period ends 10/31', job: job1)
note2 = Note.create!(content: 'POC: John Smith', job: job1)
note3 = Note.create!(content: 'application period ends 11/01', job: job2)
note4 = Note.create!(content: 'POC: Jane Doe', job: job2)
note5 = Note.create!(content: 'I think Frankie can do referral for this one', job: job2)

reminder1 = Reminder.create!(content: 'revise resume', user: eric)
reminder2 = Reminder.create!(content: 'call recruiter from IBM', user: eric)
reminder3 = Reminder.create!(content: 'revise resume', user: sylwia)
reminder4 = Reminder.create!(content: 'revise friend about referral for Hulu', user: sylwia)
reminder5 = Reminder.create!(content: 'schedule meeting with career coach', user: sylwia)

puts 'seeded 🤩 🤩 🤩'