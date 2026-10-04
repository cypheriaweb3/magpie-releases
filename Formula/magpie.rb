class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.834/magpie-cli-darwin-arm64"
      sha256 "c08fb8831b11b745ac967e82b3f6df961fd574b238c51367c7010ccfe78d26d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.834/magpie-cli-darwin-amd64"
      sha256 "eec1ea8f56a7d7bde565397981a42571b5d41a8e4f4f837f7e023a695f8e9351"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.834/magpie-cli-linux-arm64"
      sha256 "2b3630237c9915f141ff66a17fc227c21518bc5e9592e8248bc93111cf37aca4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.834/magpie-cli-linux-amd64"
      sha256 "72cd75c426e5020181c23ce3cb3465d25e93727d276c3f5d7b1882b71ee65622"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
