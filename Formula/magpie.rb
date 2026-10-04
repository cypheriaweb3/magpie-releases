class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.856/magpie-cli-darwin-arm64"
      sha256 "d900185c2448a8e588c31b8c01cf0cb2f97d77ac6ee1f5ff222568cac9cdddc2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.856/magpie-cli-darwin-amd64"
      sha256 "109fc96d9b9efbe024eda5593b398d5bcb20bbbe070b7a674e5e0fbc40afe0c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.856/magpie-cli-linux-arm64"
      sha256 "b88ad4b20db66d41106f62028ec59a013a84c0403b440224e15bf95d3256ed69"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.856/magpie-cli-linux-amd64"
      sha256 "e752591f762dcb1a00f68d7b131a97cbeeafff3f9ca076f61b4682da01b846eb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
