class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.196/magpie-cli-darwin-arm64"
      sha256 "42520449426669d4cc50678c0a41952a8b4d316c09dd3de409f002c0267402ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.196/magpie-cli-darwin-amd64"
      sha256 "127162d0c7adaa3e114f58387ec8e7717a245c208f5757c0bb19a9569a7d601f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.196/magpie-cli-linux-arm64"
      sha256 "c35e90feff856193d92bfd37f5b2eba1081a74364f6775e8ed51babcfb203bd2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.196/magpie-cli-linux-amd64"
      sha256 "7f142ab1abc42dffbd360d25769a0c6361e7b9426e7c82ea7ea90eabc1a2d118"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
