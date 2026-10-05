class MirrorDisplays < Formula
  desc "Command-line tool for controlling display mirroring"
  homepage "https://github.com/fcanas/mirror-displays"
  url "https://github.com/fcanas/mirror-displays/archive/refs/tags/v1.2.2.tar.gz"
  sha256 "bd7ded0bdd8781dd6bb8075288c29797ec21e2fab7fc7181427b9a571fcd91ed"
  license "GPL-3.0-or-later"
  head "https://github.com/fcanas/mirror-displays.git", branch: "master"

  depends_on :macos

  def install
    system ENV.cc, "mirror.m", "-o", "mirror", "-framework", "Foundation", "-framework", "CoreGraphics"
    bin.install "mirror"
  end

  test do
    assert_match "Mirror Displays version", shell_output("#{bin}/mirror -h")
  end
end
