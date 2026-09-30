class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.441/magpie-cli-darwin-arm64"
      sha256 "500148e8171eb33f515fbef7cd7e854f5a53105d9903f603c67b60121c67b8f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.441/magpie-cli-darwin-amd64"
      sha256 "d89d7b1bebedcf01c5e9a3f8d83c020b9262e5eb17f463891c48876ef33573fb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.441/magpie-cli-linux-arm64"
      sha256 "6093c37308986c8cd16e962ffe1db75ea399b503812974a2625829641596af78"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.441/magpie-cli-linux-amd64"
      sha256 "be356c090561213700c007250f2d55e743d1642dde2a70b3c460807e46cdf70e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
