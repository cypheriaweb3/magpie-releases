class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.784/magpie-cli-darwin-arm64"
      sha256 "9778ecd1506979278898e11411ee11551377a3f92143352cab8ba187381483b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.784/magpie-cli-darwin-amd64"
      sha256 "fee659bdc6a8ccbcda1a013dca94131a16034106d2e19703dcecd67774f0f4fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.784/magpie-cli-linux-arm64"
      sha256 "813e7aec2dfd97e6cefdba8633d7ac0fee8317fc2941823a3a2f58e6e7fae488"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.784/magpie-cli-linux-amd64"
      sha256 "71c51ad4a09c299b26b9fbc70f5c9ecddcf817752349ce66453acdcc95d8a8bb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
