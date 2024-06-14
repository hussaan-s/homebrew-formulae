class Xcresultparser < Formula
  desc "Parse .xcresult files and print summary in different formats"
  homepage "https://github.com/a7ex/xcresultparser"
  version "1.6.2"
  url "https://github.com/hussaan-s/xcresultparser/archive/1.6.2.tar.gz"
  sha256 "8ba10b62fa126cdb45b475bb4140e12df425f20595fe7f8d54c4fe5126f2141c"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "Missing expected argument '<xcresult-file>'", shell_output("#{bin}/xcresultparser -o txt")
  end

end
