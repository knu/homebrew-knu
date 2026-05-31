cask "copyq" do
  version "16.0.0"

  on_macos do
    arch arm: "12-m1", intel: "13"

    sha256 arm:   "57563fb2ca24751974c35b744ca7ea2c5c171bc5c00f59b3c8379912876ae4b1",
           intel: "817a35cc5e143207496d78ccc0d8dd62a9858fece8099d1f4591d00b24dbca27"

    url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ-#{version}-macos-#{arch}.dmg",
        verified: "github.com/hluk/CopyQ/"

    on_arm do
      depends_on macos: :monterey
    end
    on_intel do
      depends_on macos: :ventura
    end
  end

  name "CopyQ"
  desc "Clipboard manager with advanced features"
  homepage "https://hluk.github.io/CopyQ/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CopyQ.app"

  postflight do
    app_path = "#{appdir}/CopyQ.app"
    accessibility_pane =
      "x-apple.systempreferences:com.apple.settings.PrivacySecurity.extension" \
      "?Privacy_Accessibility"

    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", app_path],
                   sudo: false
    system_command "/usr/bin/codesign",
                   args: ["--force", "--deep", "--sign", "-", app_path],
                   sudo: false
    system_command "/usr/bin/open",
                   args: [accessibility_pane],
                   sudo: false

    ohai "CopyQ has been re-signed ad-hoc and Accessibility settings opened."
    ohai "Re-grant Accessibility access to CopyQ.app after every update."
  end

  zap trash: [
    "~/.config/copyq",
    "~/Library/Application Support/copyq",
    "~/Library/Application Support/copyq.log",
    "~/Library/Preferences/com.copyq.copyq.plist",
  ]
end
