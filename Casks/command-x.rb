cask "command-x" do
  version "1.5.1-1741281408,q29jqhoble8xbtvypmmkx,oo97q4f6g9mwjyqmhjakbr7to"
  sha256 "1dfb20035ee833ef280d1267ad52aaacb372005415083348d5994b4b3fb57527"

  url "https://dl.dropboxusercontent.com/s/#{version.csv.second}/Command-X-#{version.major_minor_patch}.zip?rlkey=#{version.csv.third}",
      verified: "dl.dropboxusercontent.com/s/"
  name "Command X"
  desc "Cut and paste files in Finder"
  homepage "https://sindresorhus.com/command-x"

  livecheck do
    url :homepage
    regex(%r{href.*?/scl/fi/(\w+)/Command-X-([\d.-]+)\.zip\?rlkey=(\w+)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]},#{match[2]}" }
    end
  end

  depends_on macos: ">= :ventura"

  app "Command X.app"

  zap trash: [
    "~/Library/Application Scripts/com.sindresorhus.Command-X",
    "~/Library/Containers/com.sindresorhus.Command-X",
  ]
end
