class MirrorDisplays < Formula
  desc "Command-line tool for controlling display mirroring"
  homepage "https://github.com/fcanas/mirror-displays"
  url "https://github.com/fcanas/mirror-displays/archive/refs/tags/v1.2.tar.gz"
  sha256 "08ce49df841d322829771e9c8e00a895f3657b2884dfb56183804aafb866cdbb"
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
