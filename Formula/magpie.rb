class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.824/magpie-cli-darwin-arm64"
      sha256 "fde982760f5e9bdd5da53636d42f4e8f5b48374aa3d842032ec9fb25b220822c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.824/magpie-cli-darwin-amd64"
      sha256 "2e5d44b11a377277efb51bb3bda463f00a83158a931c53aa9bdcd8be71c9c8b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.824/magpie-cli-linux-arm64"
      sha256 "4809d2ffba4cd356f8d108df26c7f980c014088d61b196f06118a3df3c21ed9b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.824/magpie-cli-linux-amd64"
      sha256 "3421b786d46690cbd31d1255a600df691ecc22d1416bbfc0a21c16162d0f3a91"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
