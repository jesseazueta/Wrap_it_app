# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def add_gifts
	gift_list = [{name: "Waffle Iron", category: "Personal", model: "z66Wafflenator", price: 200,},
		{name: "Televison", category: "Electronics", model: "Sony 24", price: 800}]
		users = User.all
		users.each do | user |
			gift_list.each do |item |
				user.gifts << Gift.create(item)
			end
		end
	end


	user = User.find_or_create_by({first_name: "Arin", last_name: "Damson", email: "ecocopter@example.co", password_digest: BCrypt::Password.create("password")})
	user = User.find_or_create_by({first_name: "Dirk", last_name: "Peter", email: "tankingcandle@example.co", password_digest: BCrypt::Password.create("password")})
	user = User.find_or_create_by({first_name: "Stark", last_name: "Hamilton", email: "ballerz@example.co", password_digest: BCrypt::Password.create("password")})
	user = User.find_or_create_by({first_name: "Vitas", last_name: "Stroganov", email: "sevenelements@example.co", password_digest: BCrypt::Password.create("password")})
	user = User.find_or_create_by({first_name: "Surge", last_name: "Machampion", email: "kepler@example.co", password_digest: BCrypt::Password.create("password")})
	user = User.find_or_create_by({first_name: "Jack", last_name: "Ull", email: "kackles@example.co", password_digest: BCrypt::Password.create("password")})
	user = User.find_or_create_by({first_name: "Flash", last_name: "Groudon", email: "grounded@example.co", password_digest: BCrypt::Password.create("password")})
	user = User.find_or_create_by({first_name: "Ash", last_name: "Sketchem", email: "sketchymon@example.co", password_digest: BCrypt::Password.create("password")})
	user = User.find_or_create_by({first_name: "Jonothan", last_name: "Kage", email: "totalcombat@example.co", password_digest: BCrypt::Password.create("password")})
	user = User.find_or_create_by({first_name: "Damian", last_name: "Bayne", email: "ghulies@example.co", password_digest: BCrypt::Password.create("password")})
	
	add_gifts
