class Macwin < Formula
  desc "macOS command-line tool for finding, OCRing, and raising windows"
  homepage "https://github.com/knu/macwin"
  url "https://github.com/knu/macwin/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "861961d334c7ef84bf11e62e88d76d703c99450aa30d52756b530227f93f7cc8"
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
