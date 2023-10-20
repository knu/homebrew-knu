cask "gk6-plus" do
  version "1.0.0.23"
  sha256 "c63841a922e044d36401ed4a16038656abc082df45b2e1a4069b20cae65d7034"

  url "http://cloudmouse.oss-cn-beijing.aliyuncs.com/AppData/90/GK6X%20Mac%20App-#{version}.dmg",
      verified: "cloudmouse.oss-cn-beijing.aliyuncs.com/AppData/"
  name "GK6+"
  desc "Keyboard utility for GK6 series PCB/Keyboards"
  homepage "http://www.jikedingzhi.com/downloadlist?driverID=90"

  livecheck do
    url "http://www.jikedingzhi.com/downloadlist?driverID=90"
    regex(%r{href.*?/GK6X%20Mac%20App-(\d+(?:\.\d+)+)\.dmg"})
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
