cask "color-picker" do
  version "2.0.2-1718996226,reztjse2ei8xsegdb3iic,1bi5zf6r1jb2wcrheve8tddya"
  sha256 "9ea71d91f1d5e35e539c09d9df3bfcb208b7b801237c453cc14ddc3dd21ad9a8"

  url "https://www.dropbox.com/scl/fi/#{version.csv.second}/Color-Picker-#{version.major_minor_patch}.zip?rlkey=#{version.csv.third}&raw=1",
      verified: "dropbox.com/scl/fi/"
  name "Color Picker"
  desc "Standalone System Color Picker supercharged"
  homepage "https://sindresorhus.com/system-color-picker"

  livecheck do
    url "https://github.com/sindresorhus/System-Color-Picker"
    regex(/href.*?\/([^\/]+)\/Color-Picker-(\d+(?:\.\d+)+-\w+)\.zip\?rlkey=(\w+)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]},#{match[2]}" }
    end
  end

  depends_on macos: ">= :ventura"

  app "Color Picker.app"

  zap trash: [
    "~/Library/Application Scripts/com.sindresorhus.Color-Picker",
    "~/Library/Containers/com.sindresorhus.Color-Picker",
  ]
end
