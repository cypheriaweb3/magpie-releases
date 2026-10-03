class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.738/magpie-cli-darwin-arm64"
      sha256 "2563a941bd0c8caf36e29dea5d9df27e46145e53dbc4291206acc68c4ab06c03"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.738/magpie-cli-darwin-amd64"
      sha256 "041bdb82e71e9a01d7a6c7a205b3db3c0bd4f7ab89c12fbc47304e4f6d1ef07f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.738/magpie-cli-linux-arm64"
      sha256 "511cbd239c7a5905080c2453cc8e7c87a24719f64dc0a0eb06299df7b769a442"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.738/magpie-cli-linux-amd64"
      sha256 "015a59722c3139b1730dfe42bc29f743dbe54cab7ad7bfb69b877a4ba9344fe0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
