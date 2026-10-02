class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.683/magpie-cli-darwin-arm64"
      sha256 "8205790cb5cb1347300ef6c0850d22432fc06354f829ccd714382f2e103ac0af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.683/magpie-cli-darwin-amd64"
      sha256 "0cecb0fcdf67e74fadd1325a5511dd4a760ec9fcac7be986e3e4629fea1b98e3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.683/magpie-cli-linux-arm64"
      sha256 "5c235fe24a9477476780224f12058170e428c3de78afcb15957b7cf23a871ce2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.683/magpie-cli-linux-amd64"
      sha256 "b0c86bf5516fe479e5ef13ff3df32b65bfec16967192adc29861867fa6d95c90"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
