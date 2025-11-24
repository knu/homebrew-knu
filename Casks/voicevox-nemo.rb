cask "voicevox-nemo" do
  version "0.24.0"

  on_macos do
    arch arm: "arm64", intel: "x64"

    sha256 arm:   "d67cbe5c8e23c0ee41a398e12e20b98de039a0eada944a3938bc6c3e39fc8f4f",
           intel: "60743219c067296ccdd038a91121b8f22c57389a3e2c534accb2cf69028227c8"

    url "https://github.com/VOICEVOX/voicevox_nemo_engine/releases/download/#{version}/voicevox_engine-macos-#{arch}-#{version}.vvpp",
        verified: "github.com/VOICEVOX/voicevox_nemo_engine/releases/download/"

    installer manual: "voicevox_engine-macos-#{arch}-#{version}.vvpp"
  end

  name "VOICEVOX Nemo"
  desc "Mid-quality text-to-speech engine plugin for VOICEVOX"
  homepage "https://voicevox.hiroshiba.jp/nemo/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "voicevox"
  container type: :naked

  uninstall script: { executable: "bash", args: ["-c", <<~SH.chomp] }
    echo "To complete uninstallation, manually remove the engine from VOICEVOX → Engine → Engine Management."
  SH

  caveats <<~EOS
    To use VOICEVOX Nemo:
    1. Launch VOICEVOX
    2. Go to Settings → Options → Advanced Settings
    3. Enable "Multi-Engine Feature"
    4. Double-click the downloaded .vvpp file in:
       #{staged_path}/

    Or add manually via Engine → Engine Management in VOICEVOX
  EOS
end
