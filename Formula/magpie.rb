class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.642/magpie-cli-darwin-arm64"
      sha256 "0776fc37b86ab1768646557c0228bb9e7c061318b7b28d41005eda0481b90db3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.642/magpie-cli-darwin-amd64"
      sha256 "fbc3aa8c3af61d1696253c95ca88e590a72a7f68ba4094afd702034d8bbc7b66"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.642/magpie-cli-linux-arm64"
      sha256 "4ae547fd3348e31fab9cec0fc837e97d21ba180cac296057f17301a3881ada80"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.642/magpie-cli-linux-amd64"
      sha256 "3055575bc565ff7d2af088d68d8126db91fe376a6ceac4b5c77db57b4e2b1c6b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
