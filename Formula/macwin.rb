class Macwin < Formula
  desc "macOS command-line tool for finding, OCRing, and raising windows"
  homepage "https://github.com/knu/macwin"
  url "https://github.com/knu/macwin/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e7bce5d4761f68e614025e98c8a302b1537f0d8134f5176e07afe2a6d5a12bfd"
  license "MIT"
  head "https://github.com/knu/macwin.git", branch: "main"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on xcode: ["16.0", :build]
  depends_on macos: :sonoma

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
