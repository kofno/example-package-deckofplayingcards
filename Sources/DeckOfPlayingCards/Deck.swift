import PlayingCard

public struct Deck: Equatable {
  fileprivate var cards: [PlayingCard]

  public static func standard52CardDeck() -> Deck {
    var cards: [PlayingCard] = []
    for rank in Rank.allCases {
      for suit in Suit.allCases {
        cards.append(PlayingCard(rank: rank, suit: suit))
      }
    }

    return Deck(cards)
  }

  public init(_ cards: [PlayingCard]) {
    self.cards = cards
  }

  public mutating func shuffle() {
    cards.shuffle()
  }
}
