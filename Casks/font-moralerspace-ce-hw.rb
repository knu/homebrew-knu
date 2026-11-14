cask "font-moralerspace-ce-hw" do
  version "3.1.0"
  sha256 "39f7e4d926e23008ad083f8b3a18fb6e818d111a6b3d5116c4910b5d32d2b95b"

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
