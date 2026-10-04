class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.845/magpie-cli-darwin-arm64"
      sha256 "c8f9444015def5daf5fc48bdad9a69be68dcfe570b7186d60b0e949e52028e29"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.845/magpie-cli-darwin-amd64"
      sha256 "66c940c4a280aece03d9c8ab9e68755a8dc19e73d38259d0b3c855277825a8f3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.845/magpie-cli-linux-arm64"
      sha256 "cf8d12d9d9ed8059bed8739a72d2f9f42c2309d017316508b01f1b19fbd79d43"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.845/magpie-cli-linux-amd64"
      sha256 "8f08500e30d259d0ce2bc8da6440539dda6d41cde01b08c7c76bce6fe56ac61c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
