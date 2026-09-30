class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.484/magpie-cli-darwin-arm64"
      sha256 "75304f2172e783bba115688431fe4a776f053b630464976292d684183bedc4cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.484/magpie-cli-darwin-amd64"
      sha256 "5cad7d2569bfac5d648c3a7b04bc0dbacfec38453ca332a7bfce2c27cf857c31"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.484/magpie-cli-linux-arm64"
      sha256 "23cdbd4cb2a91e133d9ce050836133ed71b31ecbe2934d27ead20ff6a46e6fce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.484/magpie-cli-linux-amd64"
      sha256 "9d0c04bc99dab963a775dcd378ae354da288ef279815c13bbb307e8e6d40847c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
