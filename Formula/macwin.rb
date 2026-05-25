class Macwin < Formula
  desc "macOS command-line tool for finding, OCRing, and raising windows"
  homepage "https://github.com/knu/macwin"
  url "https://github.com/knu/macwin/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8ffd2a5320832f8e5d3a145cf698eedb20766877b71561acfd3bfd4c31e3ed8c"
  license "MIT"
  head "https://github.com/knu/macwin.git", branch: "main"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :sonoma
  depends_on xcode: ["16.0", :build]

  def install
    system "make", "app", "CONFIGURATION=release"

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
