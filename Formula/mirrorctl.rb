class Mirrorctl < Formula
  desc 'Manage mirror indices of various package managers'
  homepage 'https://github.com/hellodhlyn/mirrorctl'
  version '0.1.1'

  if OS.mac?
    url 'https://github.com/hellodhlyn/mirrorctl/releases/download/v0.1.1/mirrorctl-v0.1.1-darwin-amd64.tar.gz'
  	sha256 '7135afa17918e5c0b9214218961886ca005ac8aa3cd744b844d9f27337ec2c62'
  elsif OS.linux?
    if Hardware::CPU.intel?
      url 'https://github.com/hellodhlyn/mirrorctl/releases/download/v0.1.1/mirrorctl-v0.1.1-linux-amd64.tar.gz'
      sha256 '8ef8a614652a16ab464347b54c1661c01502956b0da2300b0f3acdf7a739cb62'
    end
  end

  def install
    bin.install 'mirrorctl'
  end
end

