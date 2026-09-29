class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.374/magpie-cli-darwin-arm64"
      sha256 "5bac8b5215a3f140dbded6809d8fa01909b5be8d87e566c654e2383a17fb4f03"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.374/magpie-cli-darwin-amd64"
      sha256 "36aba0e2900b7731e9697ed56767702d668bbac89017863c0d5096fecfa1036f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.374/magpie-cli-linux-arm64"
      sha256 "ebd04ca39135fd0c57d5f86535e4e4b60f03ef5210db342e889f78f1fa361e06"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.374/magpie-cli-linux-amd64"
      sha256 "609e8c9084b82506eb8fcc24008d3fae0a00f89c4a6532de0df9b4078e0f9ea0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
