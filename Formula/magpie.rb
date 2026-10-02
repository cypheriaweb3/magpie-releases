class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.644/magpie-cli-darwin-arm64"
      sha256 "35521b97e212d65a508ce15cccefde04a62a8514be1de593994ed8d6ad1e14a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.644/magpie-cli-darwin-amd64"
      sha256 "944a1940823b0120cfa600a6266b8d5ea57a2989f47da8c20587f19cfab729f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.644/magpie-cli-linux-arm64"
      sha256 "b8b705b41c93a46bb1a45a98d928c7a1f3ec7ba81c94d42c7c47170eb668eefa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.644/magpie-cli-linux-amd64"
      sha256 "203e7e847bf6c6535a317403a2cdc8b8b79cefdef0e18ce3e731ac3259ce7c83"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
