class Awsid < Formula
  desc "AWSアカウントのエイリアス名からアカウントIDを出力するCLIツール"
  homepage "https://github.com/juliar13/awsid"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/juliar13/awsid/raw/main/dist/awsid_darwin_arm64.tar.gz"
      sha256 "eae57e2f24b850ba5a48fe1e25bba6c07ec5e6d7f19e4355441691eabfb32539"
    else
      url "https://github.com/juliar13/awsid/raw/main/dist/awsid_darwin_amd64.tar.gz"
      sha256 "d400f765a3d95a5ba8f21fd2f16ea00a1725e25be7e6039fb738f02b23c026e9"
    end
  end

  on_linux do
    url "https://github.com/juliar13/awsid/raw/main/dist/awsid_linux_amd64.tar.gz"
    sha256 "def4b2e541b95b0a290f0fe931e1a51dafaf23ab10c29d5ebfa859b9408bf0e9"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "awsid_darwin_arm64" => "awsid"
    elsif OS.mac?
      bin.install "awsid_darwin_amd64" => "awsid"
    else
      bin.install "awsid_linux_amd64" => "awsid"
    end
  end

  test do
    system "#{bin}/awsid", "--help"
  end
end
