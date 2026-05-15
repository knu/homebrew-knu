cask "shogihome" do
  version "1.27.2"
  sha256 "7d9d821ae65dd7b3bed2e27f99ea0d8129de6aa3230efbb9ca14c81148618bfa"

  url "https://github.com/sunfish-shogi/shogihome/releases/download/v#{version}/release-v#{version}-mac.zip",
      verified: "github.com/sunfish-shogi/shogihome/releases/download/"
  name "ShogiHome"
  desc "High-function shogi GUI application"
  homepage "https://sunfish-shogi.github.io/shogihome/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos
  container nested: "ShogiHome-#{version}-universal.dmg"

  app "ShogiHome.app"

  zap trash: [
    "~/Library/Application Support/electron-shogi",
    "~/Library/Preferences/jp.sunfish.shogi.ElectronShogi.plist",
    "~/Library/Saved Application State/jp.sunfish.shogi.ElectronShogi.savedState",
  ]
end
