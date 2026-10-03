class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.718/magpie-cli-darwin-arm64"
      sha256 "fa31bc6c6fb6555fe0741a571f474e72ef6d51dfc919032aabb0c6d3d62ea94a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.718/magpie-cli-darwin-amd64"
      sha256 "97273458a657c21131c5c2d8a1037b3d09336a9c576ab6dbb8e28f17eb41618f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.718/magpie-cli-linux-arm64"
      sha256 "07076a0c78dd2dbc2cc43eec182f3641a41c617432baa65fd248abcdeee8591b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.718/magpie-cli-linux-amd64"
      sha256 "8f628d047578905a02107a4f1cca87b19fe3d6fe30399a3d9e59560bdaccd273"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
