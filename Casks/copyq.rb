cask "copyq" do
  version "15.0.0"

  on_macos do
    arch arm: "12-m1", intel: "13"

    sha256 arm:   "12ce0078376915e4950ffcbb72070fbf6ba0a79c5d96c193039fbdbd7425f353",
           intel: "0ca67c1db53cc769ca28152bffa4738d7b50da03f90337a88d5adc6e09891235"

    url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ-#{version}-macos-#{arch}.dmg",
        verified: "github.com/hluk/CopyQ/"

    on_arm do
      depends_on macos: ">= :monterey"
    end
    on_intel do
      depends_on macos: ">= :ventura"
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
