class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.279/magpie-cli-darwin-arm64"
      sha256 "a7fbe4a27199ce0cee1440a0e998a1c2e6340a17e939194cadb245ae4068446f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.279/magpie-cli-darwin-amd64"
      sha256 "71a09545d14987aea383ef7554d2c90227e0f42517498381de9979087d77f364"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.279/magpie-cli-linux-arm64"
      sha256 "51b9dc0fee1acfe9f3d2a11dda51d09ffc5dffa5429466ba1526d51522f89397"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.279/magpie-cli-linux-amd64"
      sha256 "b1e915b5f1a77a14ee283ce46de2c0f2c1271037a1b8eed29b0538d1e3416ec8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
