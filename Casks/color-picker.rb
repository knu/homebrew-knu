cask "color-picker" do
  version "2.2.0-1767305140,kk4c8p47uj791k5t0nj0n,jivahp9p4k5f24q76473zrnkd"
  sha256 "bc31a7e3ae1d100c66227cc7f25efc836407c530181ae4a20933a47d9eb78a5b"

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

  depends_on macos: :tahoe

  app "Color Picker.app"

  zap trash: [
    "~/Library/Application Scripts/com.sindresorhus.Color-Picker",
    "~/Library/Containers/com.sindresorhus.Color-Picker",
  ]
end
