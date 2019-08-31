defmodule Cards do
  # To compile all files with elix, use "iex" - Interactive elixir shell
  # iex -S mix
  # Use "Cards" to call the Cards's module
  # And Cards.hello to call the last function
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamods"]
    # Simple quotes('') are supposed too, but the conventional is ever double quotes ("")
    

    # # The wrong approach:
    # cards = for suit <- suits do
    #   for value <- values do
    #   # This operator: "->" don't exist in elixir
    #   # for values -> value do
    #     "#{value} of #{suit}"
    #     # [suit, value]
    #     # This is a way to do the mesh of two vlaues,
    #     # But using Elixir, we can do this using a string interpolation
    #   end
    # end
    # List.flatten(cards);

    # The better approach
    # Using this, the code don't need to use the flatten operator
    # using the comma to separate the possibilities of loop in any array, 
    # Elixir will run each array into the other
    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
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
