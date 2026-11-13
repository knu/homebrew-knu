cask "font-moralerspace-ce-nfm" do
  version "3.0.0"
  sha256 "2cb4f7c27c18507c25458ba08205c4d242f30705ca9e3c0fc9235e7dddff62ce"

  url "https://github.com/knu/moralerspace/releases/download/v#{version}/MoralerspaceNFM_v#{version}.zip"
  name "Moralerspace Community Edition NFM"
  desc "Programming font combining Monaspace and Japanese typefaces"
  homepage "https://github.com/knu/moralerspace"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "MoralerspaceNFM_v#{version}/MoralerspaceArgonNFM-Bold.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceArgonNFM-BoldItalic.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceArgonNFM-Italic.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceArgonNFM-Regular.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceKryptonNFM-Bold.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceKryptonNFM-BoldItalic.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceKryptonNFM-Italic.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceKryptonNFM-Regular.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceNeonNFM-Bold.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceNeonNFM-BoldItalic.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceNeonNFM-Italic.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceNeonNFM-Regular.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceRadonNFM-Bold.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceRadonNFM-BoldItalic.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceRadonNFM-Italic.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceRadonNFM-Regular.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceXenonNFM-Bold.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceXenonNFM-BoldItalic.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceXenonNFM-Italic.ttf"
  font "MoralerspaceNFM_v#{version}/MoralerspaceXenonNFM-Regular.ttf"

  zap :not_required
end
