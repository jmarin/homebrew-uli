class Uli < Formula
  desc "Universal Loan Identifier (ULI) validation and check digit generation"
  url "https://github.com/jmarin/uli/archive/v0.2.0.tar.gz"
  sha256 "b70f023fc87daf0cdf1c2c9b0618b43bc63b7b9d0d7d3236ec0816f1c935fbfb"
  head "https://github.com/jmarin/uli.git"
  depends_on "rust" => :build

  def install 
    system "cargo", "install", "--root", prefix
  end

  test do 
    system "#{bin}/uli"
  end

end
