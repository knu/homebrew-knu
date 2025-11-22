cask "voicevox" do
  version "0.24.2"

  on_arm do
    sha256 "73360e865a068119119cb08ba35dfe23e9f9fd7b53854bd7401cc8a958c74666"

    url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/voicevox-macos-cpu-arm64-#{version}.zip",
        verified: "github.com/VOICEVOX/voicevox/releases/download/"
  end
  on_intel do
    sha256 "fe88df95ba66199f908c9b1fc761a95b7bbe9cd9a59d7e2c08972eb13fb68c87"

    url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/voicevox-macos-cpu-x64-#{version}.zip",
        verified: "github.com/VOICEVOX/voicevox/releases/download/"
  end

  name "VOICEVOX"
  desc "Free text-to-speech and singing voice synthesis software"
  homepage "https://voicevox.hiroshiba.jp/"

  depends_on macos: :big_sur

  livecheck do
    url :url
    strategy :github_latest
  end

  app "VOICEVOX/VOICEVOX.app"

  zap trash: [
    "~/Library/Application Support/voicevox-cpu",
    "~/Library/Preferences/jp.hiroshiba.voicevox.plist",
    "~/Library/Saved Application State/jp.hiroshiba.voicevox.savedState",
  ]
end
