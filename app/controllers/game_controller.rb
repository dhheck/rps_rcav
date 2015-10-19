class GameController < ApplicationController
  def rock

    comp_moves = ["rock", "paper", "scissors"]
    @comp_play = comp_moves[rand(comp_moves.length)]

    if @comp_play == "rock"
      @result = "You tied!"
    elsif @comp_play == "paper"
      @result = "You lost!"
    else
      @result = "You won!"
    end

    if @result == "You won!"
      @btn_style = "label label-success"
    elsif @result == "You tied!"
      @btn_style = "label label-warning"
    else
      @btn_style = "label label-danger"
    end

    render("rock.html.erb")
  end

  def paper

    comp_moves = ["rock", "paper", "scissors"]
    @comp_play = comp_moves[rand(comp_moves.length)]

    if @comp_play == "paper"
      @result = "You tied!"
    elsif @comp_play == "scissors"
      @result = "You lost!"
    else
      @result = "You won!"
    end

    if @result == "You won!"
      @btn_style = "label label-success"
    elsif @result == "You tied!"
      @btn_style = "label label-warning"
    else
      @btn_style = "label label-danger"
    end

  render("paper.html.erb")
  end

  def scissors

    comp_moves = ["rock", "paper", "scissors"]
    @comp_play = comp_moves[rand(comp_moves.length)]

    if @comp_play == "scissors"
      @result = "You tied!"
    elsif @comp_play == "rock"
      @result = "You lost!"
    else
      @result = "You won!"
    end

    if @result == "You won!"
      @btn_style = "label label-success"
    elsif @result == "You tied!"
      @btn_style = "label label-warning"
    else
      @btn_style = "label label-danger"
    end

  render("scissors.html.erb")
  end

end
