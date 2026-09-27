class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.220/magpie-cli-darwin-arm64"
      sha256 "ba378bc3ad2e7fe0e7c6964488c1e047c94f806a57cff260063034d96117bcd1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.220/magpie-cli-darwin-amd64"
      sha256 "c693e1e38df8c2a1eca3086e6ec5639df1c7ceb48e77ae9c2f35d88d118b2824"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.220/magpie-cli-linux-arm64"
      sha256 "aa7170d81b11a5ea895c8d4629f9bffafda38f1116a70b282b7018c2825e70d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.220/magpie-cli-linux-amd64"
      sha256 "0664a4295775fe1dbeafe6a1d13eeddde92631ee6b9383814df6c296da0f85bb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
