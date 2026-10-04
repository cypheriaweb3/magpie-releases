class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.853/magpie-cli-darwin-arm64"
      sha256 "a0234c45c252bf0405432a0ce7ee6d9b6ca4c454b23c5765602928fa0d259c8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.853/magpie-cli-darwin-amd64"
      sha256 "11dac137978fa2d699f585392576470c6d69a2d6fd88948a73f49bd43fcdd477"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.853/magpie-cli-linux-arm64"
      sha256 "f746d5412f7bac9459c5607618e88f9108655dc6e4a84df5d3fef43efacd1ce5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.853/magpie-cli-linux-amd64"
      sha256 "83ecca21fa807f7e7dea1814d99b5d1f655c97470209d57871f835a566273a2e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
