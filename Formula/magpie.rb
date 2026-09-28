class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.265/magpie-cli-darwin-arm64"
      sha256 "8b52e12f0f659240dbc39bbf1762bca57627cb4fa183955ae734cd089ec91605"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.265/magpie-cli-darwin-amd64"
      sha256 "6e4a265123db0bcfc4f602bc1c9e4ae0bcf9fa01bf0aa603c317146124a38d9d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.265/magpie-cli-linux-arm64"
      sha256 "e8e41ac4050e58a3ff877325c8cacea1775cd0590da8045a2a5326475a5970fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.265/magpie-cli-linux-amd64"
      sha256 "3d332536c6409581e5eadd870b3d7086ef3e4d9a2261d4f406f9bc4e5b126645"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
