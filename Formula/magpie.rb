class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.840/magpie-cli-darwin-arm64"
      sha256 "0b5c03d629fad5f792299f0a7ad4baa7e321b9a3030f0117e9baa4509ac3b345"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.840/magpie-cli-darwin-amd64"
      sha256 "5461a68b25cec972f24c58954a082acf8028a1b1123b0d256a7b17a2c8b6687e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.840/magpie-cli-linux-arm64"
      sha256 "44cf2ca27982eb4c585f84016d6dc1da847c94b41269c99478ea01b82822a257"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.840/magpie-cli-linux-amd64"
      sha256 "9ca0f51a0f03bb05ca9ec9c3ed6a5403e07cfca0b450c203357a37c1367b6154"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
