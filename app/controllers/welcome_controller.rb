class WelcomeController < ApplicationController
  def index
  end

  def players
    @players = Player::PLAYERS
    @sports  = Player.return_sports
    @players_prop = Player.return_properties
    @teams_prop   = Team.return_properties
    @teams   = Team::TEAMS
    render json: { contents: { players: @players,
                              teams:    @teams },
                   headers: { players: @players_prop,
                              teams:   @teams_prop },
                   sports: @sports }
  end
end
