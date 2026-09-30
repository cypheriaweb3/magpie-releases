class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.445/magpie-cli-darwin-arm64"
      sha256 "c8749d264fd7e86eca77291abcdbc2e75e85641ed40ca97c0c94d0763b80bde3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.445/magpie-cli-darwin-amd64"
      sha256 "81157a234c9f075622cd27713e293db74ef028979547c7dcb3dea27b87e3a529"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.445/magpie-cli-linux-arm64"
      sha256 "27822af7e82fbe125c47d2dc7f56edc5b4ca62b22ad8960d1804de3f9fda5a71"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.445/magpie-cli-linux-amd64"
      sha256 "e2f020f71e4616e4985e490eff0329514c3f674e9ef9a43d0c8f43e25819ec97"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
