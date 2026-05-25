class Macwin < Formula
  desc "macOS command-line tool for finding, OCRing, and raising windows"
  homepage "https://github.com/knu/macwin"
  url "https://github.com/knu/macwin/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "ce9f2d08ed1926a7e997040aa355d3d12b2a1a32327d41f26600b046a7979d49"
  license "MIT"
  head "https://github.com/knu/macwin.git", branch: "main"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :sonoma
  depends_on xcode: ["16.0", :build]

  def install
    system "make", "app", "CONFIGURATION=release", "DISABLE_SANDBOX=1"

    libexec.install ".build/MacWin.app"
    (bin/"macwin-cli").write <<~SH
      #!/bin/sh
      export MACWIN_APP_PATH="#{opt_libexec}/MacWin.app"
      exec "#{opt_libexec}/MacWin.app/Contents/MacOS/macwin-cli" "$@"
    SH
    chmod 0755, bin/"macwin-cli"
  end

  test do
    assert_match "macwin find", shell_output("#{libexec}/MacWin.app/Contents/MacOS/macwin --help")
  end
end
