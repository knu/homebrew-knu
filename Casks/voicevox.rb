cask "voicevox" do
  version "0.25.1"

  on_macos do
    arch arm: "arm64", intel: "x64"

    sha256 arm:   "a1501e26a5759f5cf7ec571bb82a33c227e61ee66646f8e17c3504441085d99d",
           intel: "9a7ff1391b85ec57c070128a137a3010c44d3b376487272d36f479f28ca20289"

    url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/voicevox-macos-cpu-#{arch}-#{version}.zip",
        verified: "github.com/VOICEVOX/voicevox/releases/download/"
  end
  name "VOICEVOX"
  desc "Free text-to-speech and singing voice synthesis software"
  homepage "https://voicevox.hiroshiba.jp/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "VOICEVOX/VOICEVOX.app"

  zap trash: [
    "~/Library/Application Support/voicevox-cpu",
    "~/Library/Preferences/jp.hiroshiba.voicevox.plist",
    "~/Library/Saved Application State/jp.hiroshiba.voicevox.savedState",
  ]
end
