// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal static let accentColor = ColorAsset(name: "AccentColor")
  internal enum Colors {
    internal static let color = ColorAsset(name: "Color")
    internal enum Landing {
      internal static let mainLandingCardBackground = ColorAsset(name: "main-landing-card-background")
      internal static let mainLandingColorShadow = ColorAsset(name: "main-landing-color-shadow")
    }
    internal enum Nkosi {
      internal static let nkosiProductPrimary = ColorAsset(name: "nkosi-product-primary")
      internal static let nkosiProductSecondary = ColorAsset(name: "nkosi-product-secondary")
      internal static let nkosiProductTertiary = ColorAsset(name: "nkosi-product-tertiary")
    }
    internal enum Zaynia {
      internal static let zayniaProductPrimary = ColorAsset(name: "zaynia-product-primary")
      internal static let zayniaProductSecondary = ColorAsset(name: "zaynia-product-secondary")
      internal static let zayniaProductTertiary = ColorAsset(name: "zaynia-product-tertiary")
    }
  }
  internal enum Landing {
    internal static let internsGlucode = ImageAsset(name: "Interns_Glucode")
    internal static let logoSymbolPurple = ImageAsset(name: "Logo-Symbol-Purple")
    internal static let landingBopngani = ImageAsset(name: "landing_bopngani")
    internal static let landingBronson = ImageAsset(name: "landing_bronson")
    internal static let landingBronwyn = ImageAsset(name: "landing_bronwyn")
    internal static let landingCardBackground1 = ImageAsset(name: "landing_card_background_1")
    internal static let landingCardBackground2 = ImageAsset(name: "landing_card_background_2")
    internal static let landingCardBackground3 = ImageAsset(name: "landing_card_background_3")
    internal static let landingCardBackground4 = ImageAsset(name: "landing_card_background_4")
    internal static let landingNkosi = ImageAsset(name: "landing_nkosi")
    internal static let landingNurse = ImageAsset(name: "landing_nurse")
    internal static let landingPat = ImageAsset(name: "landing_pat")
    internal static let landingRuan = ImageAsset(name: "landing_ruan")
    internal static let landingSibu = ImageAsset(name: "landing_sibu")
    internal static let landingSthembiso = ImageAsset(name: "landing_sthembiso")
    internal static let landingTshego = ImageAsset(name: "landing_tshego")
    internal static let landingZaynia = ImageAsset(name: "landing_zaynia")
  }
  internal enum Bongani {
    internal static let _4Z2104W028N00236BP3036 = ImageAsset(name: "4Z_2104.w028.n002.36B.p30.36")
    internal static let icons8Circled = ImageAsset(name: "icons8-circled")
    internal static let icons8CloseWindow = ImageAsset(name: "icons8-close_window")
    internal static let icons8Multiply = ImageAsset(name: "icons8-multiply")
  }
  internal enum Bronson {
    internal static let alonesmoke = ImageAsset(name: "alonesmoke")
    internal static let angercorrect = ImageAsset(name: "angercorrect")
    internal static let bunny = ImageAsset(name: "bunny")
    internal static let camping = ImageAsset(name: "camping")
    internal static let camping2 = ImageAsset(name: "camping2")
    internal static let cheating = ImageAsset(name: "cheating")
    internal static let china = ImageAsset(name: "china")
    internal static let control = ImageAsset(name: "control")
    internal static let cryingjerry = ImageAsset(name: "cryingjerry")
    internal static let cute = ImageAsset(name: "cute")
    internal static let cuteBalcony = ImageAsset(name: "cuteBalcony")
    internal static let cuteGhosts = ImageAsset(name: "cuteGhosts")
    internal static let cyber = ImageAsset(name: "cyber")
    internal static let cyber3 = ImageAsset(name: "cyber3")
    internal static let cyberPhoto = ImageAsset(name: "cyberPhoto")
    internal static let cyberlove = ImageAsset(name: "cyberlove")
    internal static let cybersad = ImageAsset(name: "cybersad")
    internal static let dreamer = ImageAsset(name: "dreamer")
    internal static let freedom = ImageAsset(name: "freedom")
    internal static let greencheck = ImageAsset(name: "greencheck")
    internal static let megr = ImageAsset(name: "megr")
    internal static let mousetrouble = ImageAsset(name: "mousetrouble")
    internal static let nata = ImageAsset(name: "nata")
    internal static let panda = ImageAsset(name: "panda")
    internal static let peaceout = ImageAsset(name: "peaceout")
    internal static let redCheck = ImageAsset(name: "redCheck")
    internal static let stresscorrect = ImageAsset(name: "stresscorrect")
    internal static let tominlove = ImageAsset(name: "tominlove")
    internal static let warrior = ImageAsset(name: "warrior")
  }
  internal enum Bronwyn {
    internal static let circles = ImageAsset(name: "circles")
    internal static let crosses = ImageAsset(name: "crosses")
    internal static let error404image = ImageAsset(name: "error404image")
    internal static let logoForTicTacToe = ImageAsset(name: "logoForTicTacToe")
  }
  internal enum Nkosi {
    internal enum Levels {
      internal static let level1100 = ImageAsset(name: "Level1-100")
      internal static let level2100 = ImageAsset(name: "Level2-100")
      internal static let level3100 = ImageAsset(name: "Level3-100")
      internal static let level4100 = ImageAsset(name: "Level4-100")
      internal static let level5100 = ImageAsset(name: "Level5-100")
    }
    internal enum MatchAppPics {
      internal static let background = ImageAsset(name: "Background")
      internal static let backCard = ImageAsset(name: "backCard")
      internal static let card1 = ImageAsset(name: "card1")
      internal static let card10 = ImageAsset(name: "card10")
      internal static let card11 = ImageAsset(name: "card11")
      internal static let card12 = ImageAsset(name: "card12")
      internal static let card13 = ImageAsset(name: "card13")
      internal static let card14 = ImageAsset(name: "card14")
      internal static let card2 = ImageAsset(name: "card2")
      internal static let card3 = ImageAsset(name: "card3")
      internal static let card4 = ImageAsset(name: "card4")
      internal static let card5 = ImageAsset(name: "card5")
      internal static let card6 = ImageAsset(name: "card6")
      internal static let card7 = ImageAsset(name: "card7")
      internal static let card8 = ImageAsset(name: "card8")
      internal static let card9 = ImageAsset(name: "card9")
    }
  }
  internal enum Nurse {
    internal static let _124503579BackgroundFrameWithSmilingWinkingAndMouthLickingEmojiWithStuckOutTongue = ImageAsset(name: "124503579-background-frame-with-smiling-winking-and-mouth-licking-emoji-with-stuck-out-tongue")
    internal static let step1 = ImageAsset(name: "Step1")
    internal static let step2 = ImageAsset(name: "Step2")
    internal static let step3 = ImageAsset(name: "Step3")
    internal static let step4 = ImageAsset(name: "Step4")
    internal static let step5 = ImageAsset(name: "Step5")
    internal static let step6 = ImageAsset(name: "Step6")
    internal static let step7 = ImageAsset(name: "Step7")
    internal static let step8 = ImageAsset(name: "Step8")
    internal static let gameLose = ImageAsset(name: "game-lose")
    internal static let pngTransparentWordGamePuzzleRiddleQuizRiddlesMiscellaneousGameTextThumbnail = ImageAsset(name: "png-transparent-word-game-puzzle-riddle-quiz-riddles-miscellaneous-game-text-thumbnail")
    internal static let riddles = ImageAsset(name: "riddles")
    internal static let unnamed2 = ImageAsset(name: "unnamed-2")
    internal static let win = ImageAsset(name: "win-")
  }
  internal enum Sibu {
    internal static let animals = ImageAsset(name: "animals")
    internal static let art = ImageAsset(name: "art")
    internal static let background = ImageAsset(name: "background")
    internal static let beginner = ImageAsset(name: "beginner")
    internal static let book = ImageAsset(name: "book")
    internal static let cartoons = ImageAsset(name: "cartoons")
    internal static let coin = ImageAsset(name: "coin")
    internal static let comic = ImageAsset(name: "comic")
    internal static let easy = ImageAsset(name: "easy")
    internal static let film = ImageAsset(name: "film")
    internal static let game = ImageAsset(name: "game")
    internal static let genKnowledge = ImageAsset(name: "genKnowledge")
    internal static let hard = ImageAsset(name: "hard")
    internal static let intermediate = ImageAsset(name: "intermediate")
    internal static let medium = ImageAsset(name: "medium")
    internal static let music = ImageAsset(name: "music")
    internal static let mythology = ImageAsset(name: "mythology")
    internal static let professional = ImageAsset(name: "professional")
    internal static let quiz = ImageAsset(name: "quiz")
    internal static let sports = ImageAsset(name: "sports")
    internal static let user = ImageAsset(name: "user")
    internal static let vehicles = ImageAsset(name: "vehicles")
  }
  internal enum Tshego {
    internal enum FlagsImagesets {
      internal static let _1 = ImageAsset(name: "1")
      internal static let _10 = ImageAsset(name: "10")
      internal static let _11 = ImageAsset(name: "11")
      internal static let _12 = ImageAsset(name: "12")
      internal static let _2 = ImageAsset(name: "2")
      internal static let _3 = ImageAsset(name: "3")
      internal static let _4 = ImageAsset(name: "4")
      internal static let _5 = ImageAsset(name: "5")
      internal static let _6 = ImageAsset(name: "6")
      internal static let _7 = ImageAsset(name: "7")
      internal static let _8 = ImageAsset(name: "8")
      internal static let _9 = ImageAsset(name: "9")
    }
    internal enum OnBoardingScreenAndLogo {
      internal static let boardingscreen1 = ImageAsset(name: "boardingscreen1")
      internal static let boardingscreen2 = ImageAsset(name: "boardingscreen2")
      internal static let minigamelogo = ImageAsset(name: "minigamelogo")
    }
  }
  internal enum Zaynia {
    internal static let character1 = ImageAsset(name: "Character1")
    internal static let character10 = ImageAsset(name: "Character10")
    internal static let character11 = ImageAsset(name: "Character11")
    internal static let character12 = ImageAsset(name: "Character12")
    internal static let character13 = ImageAsset(name: "Character13")
    internal static let character14 = ImageAsset(name: "Character14")
    internal static let character2 = ImageAsset(name: "Character2")
    internal static let character3 = ImageAsset(name: "Character3")
    internal static let character4 = ImageAsset(name: "Character4")
    internal static let character5 = ImageAsset(name: "Character5")
    internal static let character6 = ImageAsset(name: "Character6")
    internal static let character7 = ImageAsset(name: "Character7")
    internal static let character8 = ImageAsset(name: "Character8")
    internal static let character9 = ImageAsset(name: "Character9")
    internal enum Disney {
      internal static let disneyBackground = ImageAsset(name: "DisneyBackground")
      internal static let cardBack = ImageAsset(name: "card back")
      internal static let exit = ImageAsset(name: "exit")
    }
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
}

internal extension ImageAsset.Image {
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
