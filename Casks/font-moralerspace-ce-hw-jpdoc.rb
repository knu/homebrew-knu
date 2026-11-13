cask "font-moralerspace-ce-hw-jpdoc" do
  version "3.0.0"
  sha256 "51ca15a58262a6602992d9452f8f435dc80a49cd78dc4ce6aa5d289cdce2dc2b"

  url "https://github.com/knu/moralerspace/releases/download/v#{version}/MoralerspaceHWJPDOC_v#{version}.zip"
  name "Moralerspace Community Edition HW JPDOC"
  desc "Programming font combining Monaspace and Japanese typefaces"
  homepage "https://github.com/knu/moralerspace"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "font-moralerspace-hw-jpdoc"

  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceArgonHWJPDOC-Bold.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceArgonHWJPDOC-BoldItalic.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceArgonHWJPDOC-Italic.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceArgonHWJPDOC-Regular.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceKryptonHWJPDOC-Bold.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceKryptonHWJPDOC-BoldItalic.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceKryptonHWJPDOC-Italic.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceKryptonHWJPDOC-Regular.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceNeonHWJPDOC-Bold.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceNeonHWJPDOC-BoldItalic.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceNeonHWJPDOC-Italic.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceNeonHWJPDOC-Regular.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceRadonHWJPDOC-Bold.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceRadonHWJPDOC-BoldItalic.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceRadonHWJPDOC-Italic.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceRadonHWJPDOC-Regular.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceXenonHWJPDOC-Bold.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceXenonHWJPDOC-BoldItalic.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceXenonHWJPDOC-Italic.ttf"
  font "MoralerspaceHWJPDOC_v#{version}/MoralerspaceXenonHWJPDOC-Regular.ttf"

  zap :not_required
end
