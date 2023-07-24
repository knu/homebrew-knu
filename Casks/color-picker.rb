cask "color-picker" do
  version "1.13.0,1679983870"
  sha256 "15db2bea2ba350d1b4e62598e0b36f67f06cc4976cf605e6de1a14ea251f4e06"

  url "https://dsc.cloud/sindresorhus/Color-Picker-#{version.csv.first}-#{version.csv.second}.zip",
      verified: "dsc.cloud/sindresorhus/"
  name "Color Picker"
  desc "Standalone System Color Picker supercharged"
  homepage "https://sindresorhus.com/system-color-picker"

  livecheck do
    url "https://github.com/sindresorhus/System-Color-Picker"
    regex(/href.*?Color-Picker-(\d+(?:\.\d+)+)-(\w+)\.zip"/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :ventura"

  app "Color Picker.app"

  zap trash: [
    "~/Library/Application Scripts/com.sindresorhus.Color-Picker",
    "~/Library/Containers/com.sindresorhus.Color-Picker",
  ]
end
