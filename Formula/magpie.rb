class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.178/magpie-cli-darwin-arm64"
      sha256 "1d4cc1ee90e8a60a18a238b2045ccf58315ae946e6ec032bac787cee6d222a65"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.178/magpie-cli-darwin-amd64"
      sha256 "2765b88993ce32d06bea8186e5d4d359b289581f101a0b7f725545d53c662575"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.178/magpie-cli-linux-arm64"
      sha256 "154c0d6bdc84ed7a7019e4e360d178134ac73451ebeb6828d823a54d48092cc5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.178/magpie-cli-linux-amd64"
      sha256 "522629b0bfcc5098c3596ab89507a8cf4358d6faa8578cfc03837e7d6b62712a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
