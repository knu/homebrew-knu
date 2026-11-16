class Critty < Formula
  desc "Terminal UI for reviewing code and documents with coding agents"
  homepage "https://github.com/crittylabs/critty"
  url "https://github.com/crittylabs/critty/archive/refs/tags/v2.0.1.tar.gz"
  sha256 "276c324a0a14b3d189552af8fd28cae52a340744baa3fc40ea228981ffe1c639"
  license "MIT"
  head "https://github.com/crittylabs/critty.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/crittylabs/critty/v2/internal/cli.version=v#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/critty"
    generate_completions_from_executable(bin/"critty", shell_parameter_format: :cobra)
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/critty --version")
    result = JSON.parse(shell_output("#{bin}/critty tmp create"))
    directory = Pathname(result.fetch("directory"))
    assert_predicate directory, :directory?
    assert_equal testpath/".critty/tmp", directory.parent
  end
end
