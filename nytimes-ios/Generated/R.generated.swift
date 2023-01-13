//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap { Locale(identifier: $0) } ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map { Locale(identifier: $0) }
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  static func validate() throws {
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 4 storyboards.
  struct storyboard {
    /// Storyboard `ArticleListing`.
    static let articleListing = _R.storyboard.articleListing()
    /// Storyboard `Home`.
    static let home = _R.storyboard.home()
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "ArticleListing", bundle: ...)`
    static func articleListing(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.articleListing)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Home", bundle: ...)`
    static func home(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.home)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.file` struct is generated, and contains static references to 1 files.
  struct file {
    /// Resource file `swiftlint.yml`.
    static let swiftlintYml = Rswift.FileResource(bundle: R.hostingBundle, name: "swiftlint", pathExtension: "yml")

    /// `bundle.url(forResource: "swiftlint", withExtension: "yml")`
    static func swiftlintYml(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.swiftlintYml
      return fileResource.bundle.url(forResource: fileResource)
    }

    fileprivate init() {}
  }

  /// This `R.nib` struct is generated, and contains static references to 3 nibs.
  struct nib {
    /// Nib `ArticleListingCell`.
    static let articleListingCell = _R.nib._ArticleListingCell()
    /// Nib `HomeMenuCell`.
    static let homeMenuCell = _R.nib._HomeMenuCell()
    /// Nib `MenuHeaderView`.
    static let menuHeaderView = _R.nib._MenuHeaderView()

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "ArticleListingCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.articleListingCell) instead")
    static func articleListingCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.articleListingCell)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "HomeMenuCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.homeMenuCell) instead")
    static func homeMenuCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.homeMenuCell)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "MenuHeaderView", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.menuHeaderView) instead")
    static func menuHeaderView(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.menuHeaderView)
    }
    #endif

    static func articleListingCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> ArticleListingCell? {
      return R.nib.articleListingCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? ArticleListingCell
    }

    static func homeMenuCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> HomeMenuCell? {
      return R.nib.homeMenuCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? HomeMenuCell
    }

    static func menuHeaderView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> MenuHeaderView? {
      return R.nib.menuHeaderView.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MenuHeaderView
    }

    fileprivate init() {}
  }

  /// This `R.reuseIdentifier` struct is generated, and contains static references to 2 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `ArticleListingCell`.
    static let articleListingCell: Rswift.ReuseIdentifier<ArticleListingCell> = Rswift.ReuseIdentifier(identifier: "ArticleListingCell")
    /// Reuse identifier `HomeMenuCell`.
    static let homeMenuCell: Rswift.ReuseIdentifier<HomeMenuCell> = Rswift.ReuseIdentifier(identifier: "HomeMenuCell")

    fileprivate init() {}
  }

  /// This `R.string` struct is generated, and contains static references to 1 localization tables.
  struct string {
    /// This `R.string.localizable` struct is generated, and contains static references to 8 localization keys.
    struct localizable {
      /// en translation: Most Emailed
      ///
      /// Locales: en
      static let most_emailed = Rswift.StringResource(key: "most_emailed", tableName: "Localizable", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Most Shared
      ///
      /// Locales: en
      static let most_shared = Rswift.StringResource(key: "most_shared", tableName: "Localizable", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Most Viewed
      ///
      /// Locales: en
      static let most_viewed = Rswift.StringResource(key: "most_viewed", tableName: "Localizable", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: New York Times
      ///
      /// Locales: en
      static let new_york_times = Rswift.StringResource(key: "new_york_times", tableName: "Localizable", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Popular
      ///
      /// Locales: en
      static let popular = Rswift.StringResource(key: "popular", tableName: "Localizable", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Search
      ///
      /// Locales: en
      static let search = Rswift.StringResource(key: "search", tableName: "Localizable", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Search Articles
      ///
      /// Locales: en
      static let search_articles = Rswift.StringResource(key: "search_articles", tableName: "Localizable", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: articles
      ///
      /// Locales: en
      static let articles = Rswift.StringResource(key: "articles", tableName: "Localizable", bundle: R.hostingBundle, locales: ["en"], comment: nil)

      /// en translation: Most Emailed
      ///
      /// Locales: en
      static func most_emailed(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("most_emailed", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localizable", preferredLanguages: preferredLanguages) else {
          return "most_emailed"
        }

        return NSLocalizedString("most_emailed", bundle: bundle, comment: "")
      }

      /// en translation: Most Shared
      ///
      /// Locales: en
      static func most_shared(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("most_shared", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localizable", preferredLanguages: preferredLanguages) else {
          return "most_shared"
        }

        return NSLocalizedString("most_shared", bundle: bundle, comment: "")
      }

      /// en translation: Most Viewed
      ///
      /// Locales: en
      static func most_viewed(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("most_viewed", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localizable", preferredLanguages: preferredLanguages) else {
          return "most_viewed"
        }

        return NSLocalizedString("most_viewed", bundle: bundle, comment: "")
      }

      /// en translation: New York Times
      ///
      /// Locales: en
      static func new_york_times(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("new_york_times", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localizable", preferredLanguages: preferredLanguages) else {
          return "new_york_times"
        }

        return NSLocalizedString("new_york_times", bundle: bundle, comment: "")
      }

      /// en translation: Popular
      ///
      /// Locales: en
      static func popular(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("popular", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localizable", preferredLanguages: preferredLanguages) else {
          return "popular"
        }

        return NSLocalizedString("popular", bundle: bundle, comment: "")
      }

      /// en translation: Search
      ///
      /// Locales: en
      static func search(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("search", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localizable", preferredLanguages: preferredLanguages) else {
          return "search"
        }

        return NSLocalizedString("search", bundle: bundle, comment: "")
      }

      /// en translation: Search Articles
      ///
      /// Locales: en
      static func search_articles(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("search_articles", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localizable", preferredLanguages: preferredLanguages) else {
          return "search_articles"
        }

        return NSLocalizedString("search_articles", bundle: bundle, comment: "")
      }

      /// en translation: articles
      ///
      /// Locales: en
      static func articles(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("articles", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localizable", preferredLanguages: preferredLanguages) else {
          return "articles"
        }

        return NSLocalizedString("articles", bundle: bundle, comment: "")
      }

      fileprivate init() {}
    }

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    #if os(iOS) || os(tvOS)
    try nib.validate()
    #endif
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  struct nib: Rswift.Validatable {
    static func validate() throws {
      try _HomeMenuCell.validate()
    }

    struct _ArticleListingCell: Rswift.NibResourceType, Rswift.ReuseIdentifierType {
      typealias ReusableType = ArticleListingCell

      let bundle = R.hostingBundle
      let identifier = "ArticleListingCell"
      let name = "ArticleListingCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> ArticleListingCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? ArticleListingCell
      }

      fileprivate init() {}
    }

    struct _HomeMenuCell: Rswift.NibResourceType, Rswift.ReuseIdentifierType, Rswift.Validatable {
      typealias ReusableType = HomeMenuCell

      let bundle = R.hostingBundle
      let identifier = "HomeMenuCell"
      let name = "HomeMenuCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> HomeMenuCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? HomeMenuCell
      }

      static func validate() throws {
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "chevron.right") == nil { throw Rswift.ValidationError(description: "[R.swift] System image named 'chevron.right' is used in nib 'HomeMenuCell', but couldn't be loaded.") } }
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "nobelColor", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'nobelColor' is used in nib 'HomeMenuCell', but couldn't be loaded.") }
          if UIKit.UIColor(named: "primaryTextColor", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'primaryTextColor' is used in nib 'HomeMenuCell', but couldn't be loaded.") }
        }
      }

      fileprivate init() {}
    }

    struct _MenuHeaderView: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "MenuHeaderView"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> MenuHeaderView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MenuHeaderView
      }

      fileprivate init() {}
    }

    fileprivate init() {}
  }
  #endif

  #if os(iOS) || os(tvOS)
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      #if os(iOS) || os(tvOS)
      try articleListing.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try home.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try main.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    struct articleListing: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UINavigationController

      let bundle = R.hostingBundle
      let homeViewController = StoryboardViewControllerResource<ArticleListingViewController>(identifier: "HomeViewController")
      let name = "ArticleListing"

      func homeViewController(_: Void = ()) -> ArticleListingViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: homeViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.articleListing().homeViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'homeViewController' could not be loaded from storyboard 'ArticleListing' as 'ArticleListingViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct home: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UINavigationController

      let bundle = R.hostingBundle
      let homeViewController = StoryboardViewControllerResource<HomeViewController>(identifier: "HomeViewController")
      let name = "Home"

      func homeViewController(_: Void = ()) -> HomeViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: homeViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.home().homeViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'homeViewController' could not be loaded from storyboard 'Home' as 'HomeViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController

      let bundle = R.hostingBundle
      let name = "LaunchScreen"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UINavigationController

      let bundle = R.hostingBundle
      let name = "Main"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}
