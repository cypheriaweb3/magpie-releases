class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.669/magpie-cli-darwin-arm64"
      sha256 "7895ca3adedcac878a8b18cb2d655130f79321c3b52f729817ea81e39236e1ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.669/magpie-cli-darwin-amd64"
      sha256 "09b34cc7d39dd9a2a1afa45a3dec1798aca5d0ad59b001f2357ed4e2d7d11c5b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.669/magpie-cli-linux-arm64"
      sha256 "cc1a028f1e18393d1a2ada81148cb6ad6cd502fca0e714fc0a38e6e4456462cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.669/magpie-cli-linux-amd64"
      sha256 "b28b4ddb365de7d9952deedab2e72d0cfb279a713f232279c4751858dfff82a1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
