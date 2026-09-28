class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.304/magpie-cli-darwin-arm64"
      sha256 "f60b1bf60a76495977b6aa4cd5c961e4ab3877df866e75c619cdf1546e80b681"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.304/magpie-cli-darwin-amd64"
      sha256 "82d84df0463962a7a33537aaee0b5e8dbe2e29fe439d20fe13c29ac19ebe5087"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.304/magpie-cli-linux-arm64"
      sha256 "16976c2841344a7bcc15dc80054f57015ed1f0ef68e5a339935c0b0e6dd48edb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.304/magpie-cli-linux-amd64"
      sha256 "6476a888859e8921a4aac6e8275bf1ae077b8ce468df0b006f411c8a98ded02f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
