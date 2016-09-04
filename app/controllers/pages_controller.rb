class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @today = Date.today
  end

  def team
    @members = ["Paul", "Luka", "Ben","Federico", "Raphael" ]
  end

  def join_us
    render plain: "Send us an e-mail :)"
  end

  def faq
    @questions = ["Qu'est-ce que Wagon-Hunt?", "Comment m'inscire?", "Mon paiement est-il sécurisé?"]
    end

  def how_it_works
  end
end
