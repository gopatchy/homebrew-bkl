class Bkl < Formula
  @@tag = "v1.0.52"
  sha256 "0f6d99d93dacfdb355b19ca7980f8a25ceaa5776448cb90f2e451e1a19d66875"

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
