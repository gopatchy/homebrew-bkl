class Bkl < Formula
  @@tag = "v1.0.43"
  sha256 "98b0f8c7a1e9b8e9394b7a812bafae5941e0a2b4e22d6d4035218108e241a0f5"

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
