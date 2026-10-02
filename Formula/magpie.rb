class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.676/magpie-cli-darwin-arm64"
      sha256 "d1dfee93a0fc64850145cd08a48eb990341e4856632d9694367b4dc4b43dd907"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.676/magpie-cli-darwin-amd64"
      sha256 "6e48edf4f76b56b4ec4d8603d0e1a062af3c120148bfe75e324e62563b2d0c1f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.676/magpie-cli-linux-arm64"
      sha256 "7eb266029c6bf989836bdbdb315a1a0cd083eed67bed2ac800749e5849506fe4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.676/magpie-cli-linux-amd64"
      sha256 "e04b6757daa3b803480645f4ad1649264f9faa0a0d62a1ec1578ac1f8a3a2cfb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
