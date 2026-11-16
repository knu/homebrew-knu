cask "voicevox-engine" do
  version "0.26.2"

  on_macos do
    arch arm: "arm64", intel: "x64"

    sha256 arm:   "60aa5610682960aa74e4f1abc17a1d014c67cd569f116a37e65e6ed0bf6eb1fd",
           intel: "61fc1ce075f190605016c543c9ca3e1e1b4cd0481d6d2407d050f15bfc1fee9f"

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
