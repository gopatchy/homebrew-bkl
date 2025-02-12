class Bkl < Formula
  @@tag = "v1.0.48"
  sha256 "5a6e0b6ee3fa20acd20b72129aa0cab8d9b0762f3abe2aa93e50d07c8f5df355"

  desc "Evaluates bkl configuration layer files"
  homepage "https://bkl.gopatchy.io"
  url "https://github.com/gopatchy/bkl/archive/refs/tags/#{@@tag}.tar.gz"
  license "Apache-2.0"
  head "https://github.com/gopatchy/bkl.git", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGOENABLED"] = "0"
    system "go", "build", "-tags=bkl-#{@@tag},bkl-src-brew", "-trimpath", "-ldflags=-extldflags=-static", "-o", "#{bin}/", "./..."
  end
end
