class HeroesController < ApplicationController
  def index
    @heroes = Hero.order(:name)
  end
end
