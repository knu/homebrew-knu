cask "shogihome" do
  version "1.27.3"
  sha256 "899dfcc8fcbb74d549e24cf2122950d2dfb0a5717e0d972921f467a90007763b"

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
