class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.229/magpie-cli-darwin-arm64"
      sha256 "9ea9f9336dc713e28a0a5f6f284c023dd455387d5c8c405b2bb0132ba0c261a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.229/magpie-cli-darwin-amd64"
      sha256 "4da9bf9b71b5abd5f71c06e0e7bfbba831bb6dc2ac7a4c4e064a5c3fa3e56706"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.229/magpie-cli-linux-arm64"
      sha256 "959c506856c1de3fee3e3013f1d8ef11f5b86114db224afe122d2ff6affdcf7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.229/magpie-cli-linux-amd64"
      sha256 "9e08e7a4f9bfd0dc87edfc190ebdaf61ee02a12ced2704138e43cd2d93218920"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
