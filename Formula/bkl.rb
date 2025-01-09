class Bkl < Formula
  @@tag = "v1.0.42"
  sha256 "2ca35a1bdb3c11a37217f40b6d6432c10b7e8e53e52579a13040322dcbaec092"

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
