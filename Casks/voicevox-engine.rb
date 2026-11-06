cask "voicevox-engine" do
  version "0.26.1"

  on_macos do
    arch arm: "arm64", intel: "x64"

    sha256 arm:   "4ef177c2fd6dcc39d68a14e2c4b6c568d65dbd6b19f704e734b30166aae272ed",
           intel: "6f53ce0d599bd7303a773b492c6b00768bf3dd383ceeb258ebd3a0d8b6d354b6"

    url "https://github.com/VOICEVOX/voicevox_engine/releases/download/#{version}/voicevox_engine-macos-#{arch}-#{version}.7z.001"

    binary "macos-#{arch}/run", target: "voicevox-engine"

    postflight_steps do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/macos-{{arch}}"]

      mkdir_p "~/Library/LaunchAgents"
      write_file "~/Library/LaunchAgents/homebrew.mxcl.voicevox-engine.plist", <<~PLIST
        <?xml version="1.0" encoding="UTF-8"?>
        <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
        <plist version="1.0">
        <dict>
          <key>Label</key>
          <string>homebrew.mxcl.voicevox-engine</string>
          <key>RunAtLoad</key>
          <false/>
          <key>KeepAlive</key>
          <true/>
        </dict>
        </plist>
      PLIST
      run "/bin/sh",
          args: ["-eu", "-c", <<~SH, "--", "{{staged_path}}/macos-{{arch}}"]
            plist="$HOME/Library/LaunchAgents/homebrew.mxcl.voicevox-engine.plist"
            /usr/bin/plutil -insert ProgramArguments -array "$plist"
            /usr/bin/plutil -insert ProgramArguments.0 -string "$1/run" "$plist"
            /usr/bin/plutil -insert WorkingDirectory -string "$1" "$plist"
            /usr/bin/plutil -insert StandardOutPath -string "$HOME/Library/Logs/voicevox-engine.log" "$plist"
            /usr/bin/plutil -insert StandardErrorPath -string "$HOME/Library/Logs/voicevox-engine.log" "$plist"
          SH
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
  depends_on :macos

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
