cask "font-moralerspace-ce-hw-nfm" do
  version "3.1.0"
  sha256 "44dde73dd8473a4ff2640460741dfd7f2cb0c205456d6c3d4689a342b0ab8516"

  url "https://github.com/knu/moralerspace/releases/download/v#{version}/MoralerspaceHWNFM_v#{version}.zip"
  name "Moralerspace Community Edition HW NFM"
  desc "Programming font combining Monaspace and Japanese typefaces"
  homepage "https://github.com/knu/moralerspace"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "MoralerspaceHWNFM_v#{version}/MoralerspaceArgonHWNFM-Bold.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceArgonHWNFM-BoldItalic.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceArgonHWNFM-Italic.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceArgonHWNFM-Regular.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceKryptonHWNFM-Bold.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceKryptonHWNFM-BoldItalic.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceKryptonHWNFM-Italic.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceKryptonHWNFM-Regular.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceNeonHWNFM-Bold.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceNeonHWNFM-BoldItalic.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceNeonHWNFM-Italic.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceNeonHWNFM-Regular.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceRadonHWNFM-Bold.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceRadonHWNFM-BoldItalic.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceRadonHWNFM-Italic.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceRadonHWNFM-Regular.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceXenonHWNFM-Bold.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceXenonHWNFM-BoldItalic.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceXenonHWNFM-Italic.ttf"
  font "MoralerspaceHWNFM_v#{version}/MoralerspaceXenonHWNFM-Regular.ttf"

  zap :not_required
end
