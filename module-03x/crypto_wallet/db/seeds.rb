# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cadastrando tipos..."

MiningType.create!(
	description: "Proof of Work",
	acronym: "PoW",
)

MiningType.create!(
	description: "Proof of Stake",
	acronym: "PoS",
)

puts "Tipos cadastrados!"
puts "..."
puts "Cadastrando moedas..."

listCoins = [
			{ 
			  description: "Bitcoin",
		      acronym: "BTC",
		      url_image: "https://www.dhresource.com/0x0/f2/albu/g9/M00/27/85/rBVaVVxO822ACwv4AALYau1h4a8355.jpg",
			  mining_type: MiningType.find_by(acronym: 'PoW')
		    },
		
			{ 
			  description: "Ethereum",
			  acronym: "ETH",
			  url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/1257px-Ethereum_logo_2014.svg.png",
			#   mining_type: MiningType.all.sample
			  mining_type: MiningType.find_by(acronym: 'PoS')
			},
	
		]
		
listCoins.each do |coin|
	Coin.find_or_create_by!(coin)
end

puts "Moedas cadastradas!"
