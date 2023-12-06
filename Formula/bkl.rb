class Bkl < Formula
  desc "Evaluates bkl configuration layer files"
  homepage "https://bkl.gopatchy.io"
  url "https://github.com/gopatchy/bkl/archive/refs/tags/v1.0.31.tar.gz"
  sha256 "9b8062ea0d468719e419497c08bfacd3d57128f8e2b1df24a67379e0b267ae9c"
  license "Apache-2.0"
  head "https://github.com/gopatchy/bkl/", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGOENABLED"] = "0"
    system "go", "build", "-trimpath", "-ldflags=-extldflags=-static", "-o", "#{bin}/", "./..."
  end
end
