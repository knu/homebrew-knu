cask "voicevox" do
  version "0.25.0"

  on_arm do
    sha256 "e6c6b15cd0b06c4b49478c61787f360a45394aea2ed6c5e4a7a5e44bc05fb3bc"

    url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/voicevox-macos-cpu-arm64-#{version}.zip",
        verified: "github.com/VOICEVOX/voicevox/releases/download/"
  end
  on_intel do
    sha256 "6d16163679504052a4961aef4895851d7b4f72a22674f3af3e2e484cf5da50bf"

    url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/voicevox-macos-cpu-x64-#{version}.zip",
        verified: "github.com/VOICEVOX/voicevox/releases/download/"
  end

  name "VOICEVOX"
  desc "Free text-to-speech and singing voice synthesis software"
  homepage "https://voicevox.hiroshiba.jp/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "VOICEVOX/VOICEVOX.app"

  zap trash: [
    "~/Library/Application Support/voicevox-cpu",
    "~/Library/Preferences/jp.hiroshiba.voicevox.plist",
    "~/Library/Saved Application State/jp.hiroshiba.voicevox.savedState",
  ]
end
