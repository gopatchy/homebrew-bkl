class Bkl < Formula
  desc "Evaluates bkl configuration layer files"
  homepage "https://bkl.gopatchy.io"
  url "https://github.com/gopatchy/bkl/archive/refs/tags/v1.0.32.tar.gz"
  sha256 "8710789ad436509c913ee0f71c83c6a48fcae3541eb3818f2cb73f48143cba11"
  license "Apache-2.0"
  head "https://github.com/gopatchy/bkl/", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGOENABLED"] = "0"
    system "go", "build", "-trimpath", "-ldflags=-extldflags=-static", "-o", "#{bin}/", "./..."
  end
end
