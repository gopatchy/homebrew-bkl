class Bkl < Formula
  desc "Evaluates bkl configuration layer files"
  homepage "https://bkl.gopatchy.io"
  url "https://github.com/gopatchy/bkl/archive/refs/tags/v1.0.35.tar.gz"
  sha256 "1055461383be8d459c3ffc058097e3f0f82a1052a30c068fb128ade96c2a2a34"
  license "Apache-2.0"
  head "https://github.com/gopatchy/bkl/", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGOENABLED"] = "0"
    system "go", "build", "-trimpath", "-ldflags=-extldflags=-static", "-o", "#{bin}/", "./..."
  end
end
