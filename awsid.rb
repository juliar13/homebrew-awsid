class Awsid < Formula
  desc "AWSアカウントのエイリアス名からアカウントIDを出力するCLIツール"
  homepage "https://github.com/juliar13/awsid"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/juliar13/awsid/raw/main/dist/awsid_darwin_arm64.tar.gz"
      sha256 "8b1fa29ff2d10ad94ff27206a3c0501e46eb01e9806b1a96d0e2362e2cad1f2d"
    else
      url "https://github.com/juliar13/awsid/raw/main/dist/awsid_darwin_amd64.tar.gz"
      sha256 "c9aecb344c196de78e56468f3ce550f4bed905aa989adaa98183ef0c4aab562c"
    end
  end

  on_linux do
    url "https://github.com/juliar13/awsid/raw/main/dist/awsid_linux_amd64.tar.gz"
    sha256 "8c3c318a29d817684cfc9ca59849cdc9ec092b3bf22158bf6d12fd1af0239745"
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
