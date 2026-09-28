class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.269/magpie-cli-darwin-arm64"
      sha256 "69285f8348a8a2be37aa38da34dd6cc2fe3cd3963786b3c2a2c73dd2cf8c09ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.269/magpie-cli-darwin-amd64"
      sha256 "235b374085ea29ea4210cc9e08f40fca0d069edd06fef32abf85b54941e49859"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.269/magpie-cli-linux-arm64"
      sha256 "a7515a5470bcc44a1aaba4444bc560d787b5c0a998c29f7c24cdc7ef1d55df24"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.269/magpie-cli-linux-amd64"
      sha256 "8ba54c5935f5a7e09088820ce119f61282ff844725b0ac331ee9b8a4f381d5cb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
