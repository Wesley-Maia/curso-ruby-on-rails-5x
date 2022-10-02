namespace :dev do
	desc "Configura o ambiente de desenvolvimento"
	task setup: :environment do
		if Rails.env.development?
			spinner = TTY::Spinner.new("[:spinner] Loading ...", format: :pulse_2)
			spinner.auto_spin # Automatic animation with default interval
			%x(rails db:drop db:create db:migrate db:seed)
			spinner.stop("Done!") # Stop animation
		else
			puts "Você não está em ambiente de desenvolvimento"
		end
	end
end
