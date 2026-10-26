cask "voicevox-nemo" do
  version "0.26.0"

  on_macos do
    arch arm: "arm64", intel: "x64"

    sha256 arm:   "70c8e26be64684008264b23705f1439f8f19259a9571cbbeac930452e89b4ce2",
           intel: "a393a4d94ae2f7f1d3d83b251c3602e4d3e0e936b031f5c7ee6860b3346f97d7"

    url "https://github.com/VOICEVOX/voicevox_nemo_engine/releases/download/#{version}/voicevox_engine-macos-#{arch}-#{version}.vvpp"

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
  depends_on :macos
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
