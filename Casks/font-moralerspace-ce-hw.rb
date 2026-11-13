cask "font-moralerspace-ce-hw" do
  version "3.0.0"
  sha256 "b065531b393cbccb48076b000e75b765bf53d45d824d78540c8856581d0e2cdf"

  url "https://github.com/knu/moralerspace/releases/download/v#{version}/MoralerspaceHW_v#{version}.zip"
  name "Moralerspace Community Edition HW"
  desc "Programming font combining Monaspace and Japanese typefaces"
  homepage "https://github.com/knu/moralerspace"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "font-moralerspace-hw"

  font "MoralerspaceHW_v#{version}/MoralerspaceArgonHW-Bold.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceArgonHW-BoldItalic.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceArgonHW-Italic.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceArgonHW-Regular.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceKryptonHW-Bold.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceKryptonHW-BoldItalic.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceKryptonHW-Italic.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceKryptonHW-Regular.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceNeonHW-Bold.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceNeonHW-BoldItalic.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceNeonHW-Italic.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceNeonHW-Regular.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceRadonHW-Bold.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceRadonHW-BoldItalic.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceRadonHW-Italic.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceRadonHW-Regular.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceXenonHW-Bold.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceXenonHW-BoldItalic.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceXenonHW-Italic.ttf"
  font "MoralerspaceHW_v#{version}/MoralerspaceXenonHW-Regular.ttf"

  zap :not_required
end
