class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.580/magpie-cli-darwin-arm64"
      sha256 "0a606558bad552c5807f0569da1b696c35a8d232fa02a459ce6114af4b11c0ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.580/magpie-cli-darwin-amd64"
      sha256 "1301724a5aea3b9326157143ef646c9ef3fa0313944cf3d66c80a70fc18f1d87"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.580/magpie-cli-linux-arm64"
      sha256 "b2d94dc7e3aa85deeb590b35cd18dfbdc3e977ef992480ce86f381cbc6d3dcbd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.580/magpie-cli-linux-amd64"
      sha256 "044c5419e93f836eb7d23ff414448380bd7e6d00a2609a8a8f353710cf9d7a50"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
