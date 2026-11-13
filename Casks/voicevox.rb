cask "voicevox" do
  version "0.26.2"

  on_macos do
    arch arm: "arm64", intel: "x64"

    sha256 arm:   "3da773c2acfdb3e1f317865ab9b453c92491a53af0cbbdb9e6d13c4e6b82bb75",
           intel: "e85440df6103d0d8b1a1a4889036797952a0af8d5520f9268c1c98f88b3939d9"

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
