cask "voicevox-engine" do
  version "0.25.2"

  on_macos do
    arch arm: "arm64", intel: "x64"

    sha256 arm:   "6bd492249ac83c119f6fe38f2e44804e83ebc2c7f75295b21715080beb673a28",
           intel: "25fdb29e1d2cf5b203159ef2f5de291053e8ea89c9665c2cb2df205075e66707"

    url "https://github.com/VOICEVOX/voicevox_engine/releases/download/#{version}/voicevox_engine-macos-#{arch}-#{version}.7z.001"

    binary "macos-#{arch}/run", target: "voicevox-engine"

    postflight do
      system_command "xattr",
                     args: ["-dr", "com.apple.quarantine", "#{staged_path}/macos-#{arch}"]

      plist_path = "#{Dir.home}/Library/LaunchAgents/homebrew.mxcl.voicevox-engine.plist"
      FileUtils.mkdir_p File.dirname(plist_path)
      File.write(plist_path, <<~PLIST)
        <?xml version="1.0" encoding="UTF-8"?>
        <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
        <plist version="1.0">
        <dict>
          <key>Label</key>
          <string>homebrew.mxcl.voicevox-engine</string>
          <key>ProgramArguments</key>
          <array>
            <string>#{staged_path}/macos-#{arch}/run</string>
          </array>
          <key>WorkingDirectory</key>
          <string>#{staged_path}/macos-#{arch}</string>
          <key>RunAtLoad</key>
          <false/>
          <key>KeepAlive</key>
          <true/>
          <key>StandardOutPath</key>
          <string>#{Dir.home}/Library/Logs/voicevox-engine.log</string>
          <key>StandardErrorPath</key>
          <string>#{Dir.home}/Library/Logs/voicevox-engine.log</string>
        </dict>
        </plist>
      PLIST
    end
  end

  name "VOICEVOX Engine"
  desc "Standalone text-to-speech engine server"
  homepage "https://github.com/VOICEVOX/voicevox_engine"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "p7zip"
  depends_on macos: ">= :big_sur"

  uninstall launchctl: "homebrew.mxcl.voicevox-engine"

  caveats <<~EOS
    To start the VOICEVOX Engine server manually:
      voicevox-engine

    To run as a background service:
      launchctl load ~/Library/LaunchAgents/homebrew.mxcl.voicevox-engine.plist

    To stop the service:
      launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.voicevox-engine.plist

    The server will be available at:
      http://127.0.0.1:50021/docs
  EOS
end
