class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.359/magpie-cli-darwin-arm64"
      sha256 "1f332bd5ac889e00a9f06114bcb18a60e994ddde6bd44162cce5cb326730e1c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.359/magpie-cli-darwin-amd64"
      sha256 "042e9273105c09ebb1d0d0e023f2965b91622ccaba11bddfc237651c6a1c4bc1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.359/magpie-cli-linux-arm64"
      sha256 "d42c21df0162427b1d0ed99b8e11e0c91e313ffab32d6d398719d34bbc27b971"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.359/magpie-cli-linux-amd64"
      sha256 "1637f2f1c6823242d54e4bb9ce5246d366a649a32c8d6f80eb604cb6217b5ee0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
