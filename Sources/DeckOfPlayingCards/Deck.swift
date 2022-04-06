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

  public mutating func deal() -> PlayingCard? {
    guard !cards.isEmpty else {
      return nil
    }

    return cards.removeLast()
  }

  public var count: Int {
    cards.count
  }
}

extension Deck: ExpressibleByArrayLiteral {
  public init(arrayLiteral elements: PlayingCard...) {
    self.init(elements)
  }
}
