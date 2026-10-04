class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.822/magpie-cli-darwin-arm64"
      sha256 "efd31945583a17aac45956351ea7561db982b50e3d138fa1e60fac4025b8a197"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.822/magpie-cli-darwin-amd64"
      sha256 "7463cdf5935a0ecd7e2b8ccbaa315b9e95ac9780aaf8c727338f6f54c14de698"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.822/magpie-cli-linux-arm64"
      sha256 "12f07d77e48369e2d7bb39f6052179b28228c62c5aeb2c20bd33031cb317fb6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.822/magpie-cli-linux-amd64"
      sha256 "bc9efd9f06e3c7bdbdfb8ba7d275a2a12a9cfbe69d23a2f91ad037835d61f0f8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
