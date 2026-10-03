class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.780/magpie-cli-darwin-arm64"
      sha256 "9944d8d6f88d3d3675c3e70e820e021a0ca6d7739e617a260f2ad74a75876246"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.780/magpie-cli-darwin-amd64"
      sha256 "a1c99c950db18aa611a7843f03e6bc99aa27816e6b2ebe1111ba576b7172aa68"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.780/magpie-cli-linux-arm64"
      sha256 "848a10a107d76ccb0f32df82701f81f9302461bd21f8da3911c6380c68d53491"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.780/magpie-cli-linux-amd64"
      sha256 "d78adcc92fd0ab70ff994ea7a6b4ab5c251c903a9fd8685e4e95e3617170977c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
