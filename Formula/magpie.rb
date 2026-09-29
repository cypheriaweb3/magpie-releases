class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.361/magpie-cli-darwin-arm64"
      sha256 "6e026f1af35ee90a15f5b6f5e6cb15bf7b5551735f70f28a2fd0ba421a04c61f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.361/magpie-cli-darwin-amd64"
      sha256 "0134d2f1425e4656bfa883617e8610ec5ee910f04b6817c36e4853697f85da55"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.361/magpie-cli-linux-arm64"
      sha256 "aca74610266b7ab7421ecf3e563104937e9191e1d1d61fae08ef66244ad03d94"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.361/magpie-cli-linux-amd64"
      sha256 "4a5f9989e996fd94560a0be4e2501d9b75492ae1e46eef0d73d4f7a07adbce81"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
