cask "voicevox" do
  version "0.25.2"

  on_macos do
    arch arm: "arm64", intel: "x64"

    sha256 arm:   "ce92131cbd3131b3ff641b003561146494377fc7922f2f7a6beb480dc54842e8",
           intel: "6630831ab2a57fa9773448fdf433df3c3fefab81ab18d6f6103ddbefe15283eb"

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

  depends_on macos: :big_sur

  app "VOICEVOX/VOICEVOX.app"

  zap trash: [
    "~/Library/Application Support/voicevox-cpu",
    "~/Library/Preferences/jp.hiroshiba.voicevox.plist",
    "~/Library/Saved Application State/jp.hiroshiba.voicevox.savedState",
  ]
end
