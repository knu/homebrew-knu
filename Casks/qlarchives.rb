cask "qlarchives" do
  version "1.5.0"
  sha256 "7b474d859a6d9e5f03c417281c63b72a8e616defad84d897777f56768eeaf144"

  url "https://github.com/relikd/QLArchives/releases/download/v#{version}/QLArchives_#{version}.zip"
  name "QLArchives"
  desc "Quick Look extension for previewing and extracting archives"
  homepage "https://github.com/relikd/QLArchives"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "QLArchives.app"

  zap trash: [
    "~/Library/Application Scripts/de.relikd.QLArchives",
    "~/Library/Application Scripts/de.relikd.QLArchives.preview",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.relikd.qlarchives.sfl*",
    "~/Library/Containers/de.relikd.QLArchives",
    "~/Library/Containers/de.relikd.QLArchives.preview",
  ]

  caveats <<~EOS
    QLArchives is signed with an Apple Development certificate and is not notarized.
    macOS may block it. To allow it, attempt to open QLArchives.app,
    then choose Open Anyway in System Settings > Privacy & Security.

    Open QLArchives.app once to register the Quick Look extension.
    If needed, enable QLArchives Preview Extension in System Settings >
    General > Login Items & Extensions > Quick Look.
  EOS
end
