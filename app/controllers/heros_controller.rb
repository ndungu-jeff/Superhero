class HerosController < ApplicationController
    
    def index
        heros =Hero.all
        render json: heros
    end

    def show
        hero = Hero.find(params[:id])
        render json: hero
    end
    private

    def find_heroes
        Hero.all
    end
end
