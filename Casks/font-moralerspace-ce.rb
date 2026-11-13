cask "font-moralerspace-ce" do
  version "3.0.0"
  sha256 "a668cad27b098ca25af5a5de2ca2f2491a87284488ad46539b7bed575190e117"

  url "https://github.com/knu/moralerspace/releases/download/v#{version}/Moralerspace_v#{version}.zip"
  name "Moralerspace Community Edition"
  desc "Programming font combining Monaspace and Japanese typefaces"
  homepage "https://github.com/knu/moralerspace"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "font-moralerspace"

  font "Moralerspace_v#{version}/MoralerspaceArgon-Bold.ttf"
  font "Moralerspace_v#{version}/MoralerspaceArgon-BoldItalic.ttf"
  font "Moralerspace_v#{version}/MoralerspaceArgon-Italic.ttf"
  font "Moralerspace_v#{version}/MoralerspaceArgon-Regular.ttf"
  font "Moralerspace_v#{version}/MoralerspaceKrypton-Bold.ttf"
  font "Moralerspace_v#{version}/MoralerspaceKrypton-BoldItalic.ttf"
  font "Moralerspace_v#{version}/MoralerspaceKrypton-Italic.ttf"
  font "Moralerspace_v#{version}/MoralerspaceKrypton-Regular.ttf"
  font "Moralerspace_v#{version}/MoralerspaceNeon-Bold.ttf"
  font "Moralerspace_v#{version}/MoralerspaceNeon-BoldItalic.ttf"
  font "Moralerspace_v#{version}/MoralerspaceNeon-Italic.ttf"
  font "Moralerspace_v#{version}/MoralerspaceNeon-Regular.ttf"
  font "Moralerspace_v#{version}/MoralerspaceRadon-Bold.ttf"
  font "Moralerspace_v#{version}/MoralerspaceRadon-BoldItalic.ttf"
  font "Moralerspace_v#{version}/MoralerspaceRadon-Italic.ttf"
  font "Moralerspace_v#{version}/MoralerspaceRadon-Regular.ttf"
  font "Moralerspace_v#{version}/MoralerspaceXenon-Bold.ttf"
  font "Moralerspace_v#{version}/MoralerspaceXenon-BoldItalic.ttf"
  font "Moralerspace_v#{version}/MoralerspaceXenon-Italic.ttf"
  font "Moralerspace_v#{version}/MoralerspaceXenon-Regular.ttf"

  zap :not_required
end
