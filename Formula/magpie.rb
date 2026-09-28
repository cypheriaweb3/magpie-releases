class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.332/magpie-cli-darwin-arm64"
      sha256 "9747a320f45ac536b25d104a5073025d2235f5740cef7a3b54a9df9b319470a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.332/magpie-cli-darwin-amd64"
      sha256 "32896ee21dcb1d88f92265738fe45d6160101855e69d4629d55c3d5d0d47c348"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.332/magpie-cli-linux-arm64"
      sha256 "021aa3dc979fcdcca09942921b519fb9448800bd4e466651be28d5f9b68903bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.332/magpie-cli-linux-amd64"
      sha256 "0ce43569890f91c9e2c4ae4ee431e5c84864f0284b342196897f500d17f29a54"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
