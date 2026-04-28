cask "voicevox-engine" do
  version "0.25.1"

  on_macos do
    arch arm: "arm64", intel: "x64"

    sha256 arm:   "696001089f108544945d548faeaa78651b4b2c6e58ce02ba930351cd99f8f15c",
           intel: "72f5e9caac901552a040c626941f0a67b40ba7aad5680ebefd5ca34a08fa5325"

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
