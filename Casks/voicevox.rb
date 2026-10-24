cask "voicevox" do
  version "0.26.1"

  on_macos do
    arch arm: "arm64", intel: "x64"

    sha256 arm:   "ed5f5eba92b6b2913e5c98cdc314823f40f9abfc8781f0d547a84c13353966f3",
           intel: "f47763cd1300e67a178b96df0559bf530002cd0313e49d4e12c05b853d860477"

    url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/voicevox-macos-cpu-#{arch}-#{version}.zip"
  end

  name "VOICEVOX"
  desc "Free text-to-speech and singing voice synthesis software"
  homepage "https://voicevox.hiroshiba.jp/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "VOICEVOX/VOICEVOX.app"

  zap trash: [
    "~/Library/Application Support/voicevox-cpu",
    "~/Library/Preferences/jp.hiroshiba.voicevox.plist",
    "~/Library/Saved Application State/jp.hiroshiba.voicevox.savedState",
  ]
end
