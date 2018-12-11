class ULI < Formula
  desc "Universal Loan Identifier (ULI) validation and check digit generation"
  url "https://github.com/jmarin/uli/archive/v0.2.0.tar.gz"
  sha256 "51bd372617fdc159639181b508e04fd7aaea244e"
  head "https://github.com/jmarin/uli.git"
  depends_on "rust" => :build

  def install 
    system "cargo", "install", "--root", prefix
  end

  test do 
    system "#{bin}/uli"
  end

end
