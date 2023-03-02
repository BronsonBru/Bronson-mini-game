import Foundation

extension UserDefaults {
    private enum Keys {
        static let didShowOnboarding = "didShowOnboarding"
    }

    static var didShowOnboarding: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.didShowOnboarding)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.didShowOnboarding)
        }
    }
}

extension UserDefaults {
    func valueExists(forKey key: String) -> Bool {
        return object(forKey: key) != nil
    }
}
