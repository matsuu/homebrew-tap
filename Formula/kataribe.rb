class Kataribe < Formula
  desc "Access log profiler based on reseponse time"
  homepage "https://github.com/matsuu/kataribe"
  url "https://github.com/matsuu/kataribe/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "8a6e1927feb694f73914834c63c7cde57b3be56115fb29f010a83c685b2fc214"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
