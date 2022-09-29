class WelcomeController < ApplicationController

  def index
    @meu_nome = params[:nome] ? params[:nome] : "Wesley"
	  @curso = 'Rails'
  end
  
end
