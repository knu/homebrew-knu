cask "font-moralerspace-ce-hw-jpdoc-nfm" do
  version "3.0.0"
  sha256 "a2aeb504b43fa76e696b09c7bde54bc057e1eea4a94959352269345a4665c6be"

  url "https://github.com/knu/moralerspace/releases/download/v#{version}/MoralerspaceHWJPDOCNFM_v#{version}.zip"
  name "Moralerspace Community Edition HW JPDOC NFM"
  desc "Programming font combining Monaspace and Japanese typefaces"
  homepage "https://github.com/knu/moralerspace"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceArgonHWJPDOCNFM-Bold.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceArgonHWJPDOCNFM-BoldItalic.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceArgonHWJPDOCNFM-Italic.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceArgonHWJPDOCNFM-Regular.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceKryptonHWJPDOCNFM-Bold.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceKryptonHWJPDOCNFM-BoldItalic.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceKryptonHWJPDOCNFM-Italic.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceKryptonHWJPDOCNFM-Regular.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceNeonHWJPDOCNFM-Bold.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceNeonHWJPDOCNFM-BoldItalic.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceNeonHWJPDOCNFM-Italic.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceNeonHWJPDOCNFM-Regular.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceRadonHWJPDOCNFM-Bold.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceRadonHWJPDOCNFM-BoldItalic.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceRadonHWJPDOCNFM-Italic.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceRadonHWJPDOCNFM-Regular.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceXenonHWJPDOCNFM-Bold.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceXenonHWJPDOCNFM-BoldItalic.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceXenonHWJPDOCNFM-Italic.ttf"
  font "MoralerspaceHWJPDOCNFM_v#{version}/MoralerspaceXenonHWJPDOCNFM-Regular.ttf"

  zap :not_required
end
