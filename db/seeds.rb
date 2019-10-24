Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all

10.times do |index|
  City.create(
  	name: Faker::Address.city
  	)
end

10.times do |index|
  Doctor.create(
  	first_name: Faker::Name.first_name,
  	last_name: Faker::Name.last_name,
  	specialty: ["dentiste", "cardiologue", "gynécologue", "généraliste", "pédiatre", "chirurgien", "dermatologiste", "psychiatre", "ORL", "anesthésiste"].sample,
  	zip_code: Faker::Address.zip_code,
  	city: City.all.sample
  	)
end

10.times do |index|
  Patient.create(
  	first_name: Faker::Name.first_name,
  	last_name: Faker::Name.last_name,
  	city: City.all.sample
  	)
end

10.times do |index|
  Appointment.create(
  	date: Faker::Date.forward(days: 365),
  	doctor: Doctor.all.sample,
  	patient: Patient.all.sample,
  	city: City.all.sample
  	)
end