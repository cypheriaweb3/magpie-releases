class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.823/magpie-cli-darwin-arm64"
      sha256 "8ba561f3c65f51cc1deea503d4f8414aae8da43d46f20677a1409f47eeb12c19"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.823/magpie-cli-darwin-amd64"
      sha256 "91b3f8c90e5fc18bbfcebd113d1a46f95120806cc76f16f5400fb34bffe6e0b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.823/magpie-cli-linux-arm64"
      sha256 "703e78a81cb95b1d018f7f0e53aad1d09061ec569acfe93b2fd656341cef2b63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.823/magpie-cli-linux-amd64"
      sha256 "ddb5e7c6e702ea55455609a4c944f261e8443b85ea3fe85fc050c2924b9dad25"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
