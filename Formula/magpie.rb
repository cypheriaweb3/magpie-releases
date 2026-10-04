class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.808/magpie-cli-darwin-arm64"
      sha256 "82da02c188b3cd3faa803dc8ee266afc3fe3492a7eeaae31d972c9f1b189e285"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.808/magpie-cli-darwin-amd64"
      sha256 "491e023dd620195d631ea446fec5dafc9361f0eb26ce52a05298775358306935"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.808/magpie-cli-linux-arm64"
      sha256 "b5661598ff77f2ebb9c50fcf5c41a13d1238562a9a0083c74e3f0f2e73598de5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.808/magpie-cli-linux-amd64"
      sha256 "e45467f380bb11461f37869e0b4e5bfc4e12f1894dd3de154a009498cf415bcf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
