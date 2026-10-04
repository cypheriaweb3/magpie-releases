class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.850/magpie-cli-darwin-arm64"
      sha256 "25d29a473c63eb98246e5d0af39793b2858330df603b9e821afd6d3b840dac03"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.850/magpie-cli-darwin-amd64"
      sha256 "becdb2dfd5fd781fde9f5098c6c029cbca2ea77ad866bf44896c2db93ef2f005"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.850/magpie-cli-linux-arm64"
      sha256 "a5b6b1089e7d29eee07c695b9ccfdd3e91746c9d8ed821c014d77e994165ccf8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.850/magpie-cli-linux-amd64"
      sha256 "c981c6ec15e6900b275c4baf6a1ff89380576bcc1486518b33bd971251cf86c9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
