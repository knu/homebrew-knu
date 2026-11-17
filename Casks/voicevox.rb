cask "voicevox" do
  version "0.26.3"

  on_macos do
    arch arm: "arm64", intel: "x64"

    sha256 arm:   "21bbabdaf50b226e0f450ae85543589125a05ad21e566552221f1010d0e61cc1",
           intel: "2bab1d4e4c55746918a3c2fe3e910e029f8a85c2e2c68c4d852e4f8833480bbd"

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
