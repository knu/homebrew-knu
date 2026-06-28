cask "shogihome" do
  version "1.28.0"
  sha256 "d45240735d533b4460ae36107e1e9ba3b8a70c415d30f5abbf1e06e29ac7fb4c"

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
