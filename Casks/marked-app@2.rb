cask "marked-app@2" do
  version "2.6.46,1071"
  sha256 "9d67af603347b00f6c4b2b40eea6c0aef7f3b4c88abc3c77453a7d836f050626"

  url "https://updates.marked2app.com/Marked#{version.csv.first}#{version.csv.second}.dmg"
  name "Marked 2"
  desc "Previewer for Markdown, MultiMarkdown and other text markup languages"
  homepage "https://marked2app.com/"

  livecheck do
    url "https://updates.marked2app.com/marked.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Marked 2.app"

  uninstall quit: "com.brettterpstra.marked2"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brettterpstra.marked2.sfl*",
    "~/Library/Application Support/Marked 2",
    "~/Library/Caches/com.brettterpstra.marked2",
    "~/Library/Caches/Marked 2",
    "~/Library/Logs/Marked 2",
    "~/Library/Preferences/com.brettterpstra.marked2.plist",
    "~/Library/Saved Application State/com.brettterpstra.marked2.savedState",
  ]
end
