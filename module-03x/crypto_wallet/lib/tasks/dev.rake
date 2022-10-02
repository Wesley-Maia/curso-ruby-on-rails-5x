namespace :dev do
	desc "Configura o ambiente de desenvolvimento"
	task setup: :environment do
		if Rails.env.development?
			show_spinner("Apagando BD...", "Concluído!") do
				%x(rails db:drop)
			end
			
			show_spinner("Criando BD...", "Concluído!") do
				%x(rails db:create)
			end
			
			show_spinner("Migrando BD...", "Concluído!") do
				%x(rails db:migrate)
			end
			
			show_spinner("Populando BD...", "Concluído!") do
				%x(rails db:seed)
			end
			
		else
			puts "Você não está em ambiente de desenvolvimento"
		end
	end
end

private

def show_spinner(msg_start, msg_end = "Concluído!")
	spinner = TTY::Spinner.new("[:spinner] Loading #{msg_start}")
	spinner.auto_spin # Automatic animation with default interval
	yield
	spinner.success("(#{msg_end})")
end
