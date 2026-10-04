class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.802/magpie-cli-darwin-arm64"
      sha256 "ca6c119022481ca60f27f8a18553006bed65b9841d9ad8692d4399fb4f496c10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.802/magpie-cli-darwin-amd64"
      sha256 "e72443fb75943919aeb41086532333916f158d8af6d437b1abeb764cdc4bc822"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.802/magpie-cli-linux-arm64"
      sha256 "fbb9e0d5555881cce4ba0a30b2fb1a11ac7cc8c9f8b68128a3a00a0fbcbec466"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.802/magpie-cli-linux-amd64"
      sha256 "b6fed86bf3f74b223888b3e39a8d05a45d601c34542e0ce55697c479f3927d6b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
