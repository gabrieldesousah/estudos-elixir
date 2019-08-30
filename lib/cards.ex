defmodule Cards do
  # To compile all files with elix, use "iex" - Interactive elixir shell
  # iex -S mix
  # Use "Cards" to call the Cards's module
  # And Cards.hello to call the last function
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamods"]

    for suit <- suits do
      suit
    end
    # Simple quotes('') are supposed too, but the conventional is ever double quotes ("")
  end

  # Elixir will treat the size of the value mathematically. 
  # Then if you try to call Cards.deck([],[]) will receive the error:
  # ** (UndefinedFunctionError) function Cards.shuffle/2 is undefined or private. Did you mean one of:
      # * shuffle/1
  
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  # In general, boolean functions have (?) in the name
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end
