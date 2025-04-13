class Awsid < Formula
  desc "AWSアカウントのエイリアス名からアカウントIDを出力するCLIツール"
  homepage "https://github.com/juliar13/awsid"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/juliar13/awsid/raw/main/dist/awsid_darwin_arm64.tar.gz"
      sha256 "a3718acb520571857989ad88d242d16a16f5e03eda7a5a910cf6caebb3e2b5a5"
    else
      url "https://github.com/juliar13/awsid/raw/main/dist/awsid_darwin_amd64.tar.gz"
      sha256 "727350cc7852627bab83d56644aac7d2565017859160012938e8bccb73d3c4d4"
    end
  end

  on_linux do
    url "https://github.com/juliar13/awsid/raw/main/dist/awsid_linux_amd64.tar.gz"
    sha256 "755b2c1d4ea2d75b0814c82c49f03481df23f350bb038fa1293dee9179aca1eb"
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
