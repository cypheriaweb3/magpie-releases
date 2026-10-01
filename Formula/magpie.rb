class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.563/magpie-cli-darwin-arm64"
      sha256 "b2507abaf8c176c05f28b3f27c4e9833433448a3cf00fc5d5b01a2b3f9c8284c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.563/magpie-cli-darwin-amd64"
      sha256 "e2d1559dbba3ae9cfecb1d6d3d6ce14cb175897519a1f0d321d544f7fae7f258"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.563/magpie-cli-linux-arm64"
      sha256 "f4573814b55fe80cd1a8b7e8eaae4a5075de2bc2b031b6e4b9e29fff78295935"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.563/magpie-cli-linux-amd64"
      sha256 "3bf10494f6c33df8ad4d6df0dc11b804f168430f4105ea80a9c7619fcb64ff10"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
