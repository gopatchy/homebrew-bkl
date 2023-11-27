class Bkl < Formula
  desc "Evaluates bkl configuration layer files"
  homepage "https://bkl.gopatchy.io"
  url "https://github.com/gopatchy/bkl/archive/refs/tags/v1.0.29.tar.gz"
  sha256 "8ceab68e715cb7f6b70c43b2eae0a3da84a086457c7d9f15755744a6afd45c6b"
  license "Apache-2.0"
  head "https://github.com/gopatchy/bkl/", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGOENABLED"] = "0"
    system "go", "build", "-trimpath", "-ldflags=-extldflags=-static", "-o", "#{bin}/", "./..."
  end
end
