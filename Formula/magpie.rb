class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.296/magpie-cli-darwin-arm64"
      sha256 "2d52b3be6e4d3c93ceb3b5b9455f8af239eff338857f29b1cf737bce8368a517"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.296/magpie-cli-darwin-amd64"
      sha256 "bff3a14013e37bbb7c5eb178f62cc959c7007d6d6f93cd09e1c754002888dcf3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.296/magpie-cli-linux-arm64"
      sha256 "e56ea88466ec1657fc05db35cecb41dde948eea2c5645ecdeb993b81bb658c00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.296/magpie-cli-linux-amd64"
      sha256 "b0b391f43bdfe70041249f3390c877e91701d5a79796f9daf64e32a297849448"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
