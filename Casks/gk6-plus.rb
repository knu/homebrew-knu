cask "gk6-plus" do
  version "1.0.0.27"
  sha256 "17af9d1c8df741d0022c2f2da2f4ccf5c6f21d514ea3f7c56852513ec03d86d3"

  url "https://skyloongtech.com/wp-content/uploads/2024/12/GK6X-Mac-App-#{version}.zip"
  name "GK6+"
  desc "Keyboard utility for GK6 series PCB/Keyboards"
  homepage "https://skyloongtech.com/skyloong-keyboard-software/"

  livecheck do
    url "https://skyloongtech.com/skyloong-keyboard-software/"
    regex(/GK6\+Mac App V(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :ventura"
  container nested: "GK6X Mac App-#{version}.dmg"

  app "GK6+.app"

  zap trash: [
    "~/Library/Application Support/GK6+",
    "~/Library/Preferences/com.jikedingzhi.GK6xPlus.plist",
    "~/Library/Saved Application State/com.jikedingzhi.GK6xPlus.savedState",
  ]
end
