cask "font-moralerspace-ce-jpdoc" do
  version "3.0.0"
  sha256 "70f6a23ecf8c26c9ce9ae6ae6a4ee150c8292e88c64c427ad1ead792fc71df1b"

  url "https://github.com/knu/moralerspace/releases/download/v#{version}/MoralerspaceJPDOC_v#{version}.zip"
  name "Moralerspace Community Edition JPDOC"
  desc "Programming font combining Monaspace and Japanese typefaces"
  homepage "https://github.com/knu/moralerspace"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "font-moralerspace-jpdoc"

  font "MoralerspaceJPDOC_v#{version}/MoralerspaceArgonJPDOC-Bold.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceArgonJPDOC-BoldItalic.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceArgonJPDOC-Italic.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceArgonJPDOC-Regular.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceKryptonJPDOC-Bold.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceKryptonJPDOC-BoldItalic.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceKryptonJPDOC-Italic.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceKryptonJPDOC-Regular.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceNeonJPDOC-Bold.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceNeonJPDOC-BoldItalic.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceNeonJPDOC-Italic.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceNeonJPDOC-Regular.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceRadonJPDOC-Bold.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceRadonJPDOC-BoldItalic.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceRadonJPDOC-Italic.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceRadonJPDOC-Regular.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceXenonJPDOC-Bold.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceXenonJPDOC-BoldItalic.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceXenonJPDOC-Italic.ttf"
  font "MoralerspaceJPDOC_v#{version}/MoralerspaceXenonJPDOC-Regular.ttf"

  zap :not_required
end
