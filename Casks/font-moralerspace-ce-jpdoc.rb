cask "font-moralerspace-ce-jpdoc" do
  version "3.1.0"
  sha256 "c27be3d27fd503c2418512e104329e896d447ef4f267e1a8ed41a058cabc90cc"

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
