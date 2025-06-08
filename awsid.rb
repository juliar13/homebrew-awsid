class Awsid < Formula
  desc "AWSアカウントのエイリアス名からアカウントIDを出力するCLIツール"
  homepage "https://github.com/juliar13/awsid"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/juliar13/awsid/raw/main/dist/awsid_darwin_arm64.tar.gz"
      sha256 "4066697de76311f7ce9e957a00b5fce58b7a8adbdd7ed36eb27a25a7bfed88ea"
    else
      url "https://github.com/juliar13/awsid/raw/main/dist/awsid_darwin_amd64.tar.gz"
      sha256 "9db1e4b20c193edd6473086c4d8a236f63a92925dc384e3674a8bd06399c211d"
    end
  end

  on_linux do
    url "https://github.com/juliar13/awsid/raw/main/dist/awsid_linux_amd64.tar.gz"
    sha256 "dfca31161cc97a05b820ce1361f3742bbee1169920618870313665112f6d41b0"
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
