cask "gk6-plus" do
  version "1.0.0.1"
  sha256 "c896df76e567ba842083042e4ed14d6b14efc7f5ba8988247d4cbc9b2e609aee"

  url "https://cloudmouse.oss-cn-beijing.aliyuncs.com/AppData/90/GK6x%20Mac%20App-#{version}.dmg",
      verified: "cloudmouse.oss-cn-beijing.aliyuncs.com/AppData/"
  name "GK6+"
  desc "Keyboard utility for GK6 series PCB/Keyboards"
  homepage "http://www.jikedingzhi.com/downloadlist?driverID=90"

  livecheck do
    url "http://www.jikedingzhi.com/downloadlist?driverID=90"
    regex(/href.*?\/GK6X%20Mac%20App-(\d+(?:\.\d+)+)\.dmg"/)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0] }
    end
  end

  depends_on macos: ">= :ventura"

  app "GK6+.app"

  zap trash: [
    "~/Library/Application Support/GK6+",
    "~/Library/Preferences/com.jikedingzhi.GK6xPlus.plist",
    "~/Library/Saved Application State/com.jikedingzhi.GK6xPlus.savedState",
  ]
end
