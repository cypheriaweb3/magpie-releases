class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.781/magpie-cli-darwin-arm64"
      sha256 "1a966dec99a4a41ed28b7d2c784a7ba2ba7916f5e045de107351b6401b1f7eaf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.781/magpie-cli-darwin-amd64"
      sha256 "f059cb272c5aa38712622ffce8399bcf6b3688acba2104adf01c37c5aec65c3a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.781/magpie-cli-linux-arm64"
      sha256 "867d7eee042a61386105a09635adf5f24c671bd81d39590d68bc69eea074c2d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.781/magpie-cli-linux-amd64"
      sha256 "82e7979c8141b371588f18c1fdc08b8a711ef82ffa45b8770a7a540c237823a8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
