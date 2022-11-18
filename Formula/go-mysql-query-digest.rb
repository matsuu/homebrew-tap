class GoMysqlQueryDigest < Formula
  desc "Alternative to pt-query-digest in Golang"
  homepage "https://github.com/matsuu/go-mysql-query-digest"
  url "https://github.com/matsuu/go-mysql-query-digest/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "42bad776eb01ce1a7970f854f6aeb348341386e8c2101375f73bb8cb9a4f4a18"
  license "BSD-3-Clause"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
