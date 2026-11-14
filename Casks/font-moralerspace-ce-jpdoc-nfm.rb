cask "font-moralerspace-ce-jpdoc-nfm" do
  version "3.1.0"
  sha256 "69161bbafff02dc1e060d02efb06e4e880da255ae26e653f55ef5d63732c2b8c"

  url "https://github.com/knu/moralerspace/releases/download/v#{version}/MoralerspaceJPDOCNFM_v#{version}.zip"
  name "Moralerspace Community Edition JPDOC NFM"
  desc "Programming font combining Monaspace and Japanese typefaces"
  homepage "https://github.com/knu/moralerspace"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceArgonJPDOCNFM-Bold.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceArgonJPDOCNFM-BoldItalic.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceArgonJPDOCNFM-Italic.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceArgonJPDOCNFM-Regular.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceKryptonJPDOCNFM-Bold.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceKryptonJPDOCNFM-BoldItalic.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceKryptonJPDOCNFM-Italic.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceKryptonJPDOCNFM-Regular.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceNeonJPDOCNFM-Bold.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceNeonJPDOCNFM-BoldItalic.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceNeonJPDOCNFM-Italic.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceNeonJPDOCNFM-Regular.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceRadonJPDOCNFM-Bold.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceRadonJPDOCNFM-BoldItalic.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceRadonJPDOCNFM-Italic.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceRadonJPDOCNFM-Regular.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceXenonJPDOCNFM-Bold.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceXenonJPDOCNFM-BoldItalic.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceXenonJPDOCNFM-Italic.ttf"
  font "MoralerspaceJPDOCNFM_v#{version}/MoralerspaceXenonJPDOCNFM-Regular.ttf"

  zap :not_required
end
