require_relative './blackjack.rb'

game = Blackjack.new(Deck.new)
game.play = game.greeting

while game.play == "y"
  game = Blackjack.new(Deck.new)
  game.dealer_display_card
  game.player_display_cards
  game.display_player_total
  if game.player_total == 21
    game.player_wins
    game.play = game.check_if_new_game
  elsif game.player_total == 22
    game.dealer_wins
    game.play = game.check_if_new_game
  else
    game.move = game.player_move
    while game.move == "hit"
      game.player_draw_card
      game.player_display_cards
      if game.player_total == 21
        game.display_player_total
        game.player_wins
        game.play = game.check_if_new_game
        game.move = "not hit"
      elsif game.player_total > 21
        game.display_player_total
        game.dealer_wins
        game.play = game.check_if_new_game
        game.move = "not hit"
      else
        game.display_player_total
        game.move = game.player_move
      end
    end
    if game.player_total < 21
      while game.dealer_total < 16
        game.dealer_draw_card
        game.dealer_display_all_cards
        if game.dealer_total > 21
          game.display_dealer_total
          game.display_player_total
          game.player_wins
          game.play = game.check_if_new_game
        else
          game.display_dealer_total
        end
      end
    end
    if game.move != "not hit" && game.dealer_total <= 21
      if game.dealer_total == 21
        game.player_display_cards
        game.dealer_display_all_cards
        game.display_dealer_total
        game.display_player_total
        game.dealer_wins
        game.play = game.check_if_new_game
      elsif game.dealer_total == game.player_total
        game.tie
        game.player_display_cards
        game.dealer_display_all_cards
        game.display_dealer_total
        game.display_player_total
        game.player_wins
        game.play = game.check_if_new_game
      elsif game.dealer_total > game.player_total
        game.player_display_cards
        game.dealer_display_all_cards
        game.display_dealer_total
        game.display_player_total
        game.dealer_wins
        game.play = game.check_if_new_game
      else
        game.player_display_cards
        game.dealer_display_all_cards
        game.display_dealer_total
        game.display_player_total
        game.player_wins
        game.play = game.check_if_new_game
      end
    end
  end
end
