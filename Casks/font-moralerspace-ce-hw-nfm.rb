cask "font-moralerspace-ce-hw-nfm" do
  version "3.0.0"
  sha256 "534a9379fcfeebd5e20d12865336e17b2699864ca128ebc3c1541122982d5f79"

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
