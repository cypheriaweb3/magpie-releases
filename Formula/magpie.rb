class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.510/magpie-cli-darwin-arm64"
      sha256 "0021ce4f15679d3114c4b4982a62f37714882875f15b2238b6caff56048d49e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.510/magpie-cli-darwin-amd64"
      sha256 "1c5e1caf5373a802eccda5ed3e341f0fb872bd86b25801322f5cd7aa0767b31f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.510/magpie-cli-linux-arm64"
      sha256 "aea2cdcbce703d333b0aeb3fc3e97cb15935698fb522b5ac4eb212c253e65386"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.510/magpie-cli-linux-amd64"
      sha256 "13f2f87073bf53e9ea327732f9288ad52d2276908becda918524d4085e624784"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
