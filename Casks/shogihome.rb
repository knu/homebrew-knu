cask "shogihome" do
  version "1.29.0"
  sha256 "a9ca15d0d351d56b8baa9a87c0aa2eb1b68f815968910c0febf5046766257e4f"

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
