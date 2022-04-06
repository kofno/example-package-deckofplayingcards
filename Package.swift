// swift-tools-version: 5.6

import PackageDescription

let package = Package(
  name: "DeckOfPlayingCards",
  products: [
    .library(name: "DeckOfPlayingCards", targets: ["DeckOfPlayingCards"]),
  ],
  dependencies: [
    .package(name: "PlayingCard", url: "https://github.com/kofno/example-package-playingcard.git", from: "2.0.0"),
  ],
  targets: [
    .target(name: "DeckOfPlayingCards", dependencies: [.byName(name: "PlayingCard")]),
  ]
)
