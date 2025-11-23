cask "shogihome" do
  version "1.25.1"
  sha256 "a4de7b8d72cf5e07a01ec5a170ac2de16e6d0ca322366f70d56f3e11d5eb3999"

  url "https://github.com/sunfish-shogi/shogihome/releases/download/v#{version}/release-v#{version}-mac.zip",
      verified: "github.com/sunfish-shogi/shogihome/releases/download/"
  name "ShogiHome"
  desc "High-function shogi GUI application"
  homepage "https://sunfish-shogi.github.io/shogihome/"

  livecheck do
    url :url
    strategy :github_latest
  end

  container nested: "ShogiHome-#{version}-universal.dmg"

  app "ShogiHome.app"

  zap trash: [
    "~/Library/Application Support/electron-shogi",
    "~/Library/Preferences/jp.sunfish.shogi.ElectronShogi.plist",
    "~/Library/Saved Application State/jp.sunfish.shogi.ElectronShogi.savedState",
  ]
end
