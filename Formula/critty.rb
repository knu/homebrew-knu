class Critty < Formula
  desc "Terminal UI for reviewing code and documents with coding agents"
  homepage "https://github.com/crittylabs/critty"
  url "https://github.com/crittylabs/critty/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "83a3681f2dd77221ef49d9f12c6c7d98b83f1e07d2912bdade4fa19b49ead39a"
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
