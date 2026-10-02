class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.656/magpie-cli-darwin-arm64"
      sha256 "f54e961659009b049554690d215e4eab77dca6e1904cdfc7ee42d3e9ab5d5a74"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.656/magpie-cli-darwin-amd64"
      sha256 "3d20e10aefa50c51e2f421f868d59f1d658e155a24f44d388ffd33c32afa3e24"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.656/magpie-cli-linux-arm64"
      sha256 "0ede6de14514134a7076153e31340a575bbb135c186408ffed145b70ef0052a9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.656/magpie-cli-linux-amd64"
      sha256 "2685cba0aedb7e4d2a1ecff99fb95e06cdf6ff91e026b12fe3df97ae5bebebf7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
