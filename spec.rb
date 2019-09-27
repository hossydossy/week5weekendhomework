require('minitest/autorun')
require('minitest/rg')
require_relative('./card_game.rb')

class CardGameTest < Minitest::Test

  def setup()

    @card1 = Card.new("Hearts", 1)
    @card2 = Card.new("Spades", 10)
    @card3 = Card.new("Clubs", 7)
    @cardgame = CardGame.new()
    @cards = [@card1, @card2, @card3]

  end

  def test_check_for_ace()
    result = @cardgame.check_for_ace(@card1)
    assert_equal(result, true)
  end

  def test_highest_card()
    result = @cardgame.highest_card(@card1, @card2)
    assert_equal(result, @card2)
  end

  def test_cards_total()
    assert_equal("You have a total of 18", CardGame.cards_total(@cards))
  end

end
