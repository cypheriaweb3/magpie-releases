class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.479/magpie-cli-darwin-arm64"
      sha256 "9e83347a33bf912b0ff052f1a0eacda12ebd3a4b3ce6eaedc5d60265ac687576"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.479/magpie-cli-darwin-amd64"
      sha256 "4d9b2a036c74a56d0b0c0888e35a3d14ff82d6b3ae4336e697eb3bf45844c207"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.479/magpie-cli-linux-arm64"
      sha256 "112dcad0a9beaeb4b15b1eddcb0d7c1bfffec0e6b14e04c88d23a4a0eb6c5aff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.479/magpie-cli-linux-amd64"
      sha256 "38593f215cf98ef1f5f99c61f333133d465aa5fa711ce325c64a33cccd6a5b07"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
