cask "command-x" do
  version "1.6.2-1775377612,90rakqppxdnryctolu9rc,hwh8im5sol3bnc7chqjursf7a"
  sha256 "28c35c0538bb3a39b0b1149725ba244386e3ced8b301e357a7ef650cf36474cc"

  url "https://dl.dropboxusercontent.com/scl/fi/#{version.csv.second}/Command-X-#{version.major_minor_patch}.zip?rlkey=#{version.csv.third}"
  name "Command X"
  desc "Cut and paste files in Finder"
  homepage "https://sindresorhus.com/command-x"

  livecheck do
    url :homepage
    regex(%r{href.*?/scl/fi/(\w+)/Command-X-(\d+(?:\.\d+)+)(?:-macOS-\d+)?-(\d+)\.zip\?rlkey=(\w+)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]}-#{match[2]},#{match[0]},#{match[3]}" }
    end
  end

  depends_on macos: :sequoia

  app "Command X.app"

  zap trash: [
    "~/Library/Application Scripts/com.sindresorhus.Command-X",
    "~/Library/Containers/com.sindresorhus.Command-X",
  ]
end
