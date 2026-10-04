class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.888/magpie-cli-darwin-arm64"
      sha256 "c1a564e358728d09e88067ba9e464d855b39b80bac8e73e257ed3ffce7073188"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.888/magpie-cli-darwin-amd64"
      sha256 "5ed2613116e07da2c82ec1721555834fe7c5a09c93e1e7f729658e8f129708b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.888/magpie-cli-linux-arm64"
      sha256 "14e1ab4532688d77945f180c695cd19d4b11033b67335fd161d02ed412648aa5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.888/magpie-cli-linux-amd64"
      sha256 "23defbeb65f46aa27f599bbe33d86f0e2e9692ac1bb80bf99307219bd804dc06"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
