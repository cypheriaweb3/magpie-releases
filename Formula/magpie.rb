class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.460/magpie-cli-darwin-arm64"
      sha256 "b2b22728610c62dab007e31b0b55899aad06a6da74b420eb81e302f520097db9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.460/magpie-cli-darwin-amd64"
      sha256 "839024086276db0b884cf6423feb3c796f5747d1684e86ab38b47cba8eb06150"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.460/magpie-cli-linux-arm64"
      sha256 "8ec46b175a364bdbb723984559ffd8e7196ecd5bd43c27e6a9e3ee11aaffc08d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.460/magpie-cli-linux-amd64"
      sha256 "b138acb6dba985547ec42aa0adedd9d39eb7c903552f6898955cd84a5439e176"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
