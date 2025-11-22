cask "color-picker" do
  version "2.1.0-1740424285,2lvdt09widz0p3jzfrwd8,yuzrr4abjfty60oscd3pcdyvc"
  sha256 "c4834ed4d4cbf3202de889f7c2d758e9e11b57bd64863db344079ed6c673e89e"

  url "https://www.dropbox.com/scl/fi/#{version.csv.second}/Color-Picker-#{version.major_minor_patch}.zip?rlkey=#{version.csv.third}&raw=1",
      verified: "dropbox.com/scl/fi/"
  name "Color Picker"
  desc "Standalone System Color Picker supercharged"
  homepage "https://sindresorhus.com/system-color-picker"

  livecheck do
    url "https://sindresorhus.com/system-color-picker"
    regex(%r{href.*?/([^/]+)/Color-Picker-(\d+(?:\.\d+)+-\w+)\.zip\?rlkey=(\w+)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]},#{match[2]}" }
    end
  end

  depends_on macos: ">= :sequoia"

  app "Color Picker.app"

  zap trash: [
    "~/Library/Application Scripts/com.sindresorhus.Color-Picker",
    "~/Library/Containers/com.sindresorhus.Color-Picker",
  ]
end
