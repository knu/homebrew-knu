class Inplace < Formula
  desc "Command-line utility that edits files in-place through given filter commands"
  homepage "https://github.com/knu/inplace"
  url "https://rubygems.org/downloads/inplace-1.3.0.gem"
  sha256 "e7438a7c0b82d8e1fd57870b22bd97ca144d07faa00c008df5d84d5e548c6c14"
  license "BSD-2-Clause"

  livecheck do
    url "https://rubygems.org/api/v1/gems/inplace.json"
    regex(/"version":"(\d+(?:\.\d+)+)"/i)
  end

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "install", cached_download,
           "--no-document",
           "--install-dir", libexec

    bin.install libexec/"bin/inplace"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: libexec)
  end

  test do
    (testpath/"test.txt").write "banana\napple\ncherry"
    system bin/"inplace", "sort", testpath/"test.txt"
    assert_equal "apple\nbanana\ncherry", (testpath/"test.txt").read
  end
end
