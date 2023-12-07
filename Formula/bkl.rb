class Bkl < Formula
  desc "Evaluates bkl configuration layer files"
  homepage "https://bkl.gopatchy.io"
  url "https://github.com/gopatchy/bkl/archive/refs/tags/v1.0.33.tar.gz"
  sha256 "cf9330ad1f529166576dcda8af401fe7e9158771ff9ae6a738d01d9395f5243c"
  license "Apache-2.0"
  head "https://github.com/gopatchy/bkl/", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGOENABLED"] = "0"
    system "go", "build", "-trimpath", "-ldflags=-extldflags=-static", "-o", "#{bin}/", "./..."
  end
end
