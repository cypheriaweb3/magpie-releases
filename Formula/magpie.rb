class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.260/magpie-cli-darwin-arm64"
      sha256 "d6c78d0d58d90d8d8d4e778e4ba734aa489a53a9fab60772147fce1d5cd62aca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.260/magpie-cli-darwin-amd64"
      sha256 "80fb716cf66a3ed144d57f51925be4d49d523091404981b3a3550e287bceb7dc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.260/magpie-cli-linux-arm64"
      sha256 "3cebadcb294faaf02488edd1e9594e14c97710cce02d407e69399fad1c95524d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.260/magpie-cli-linux-amd64"
      sha256 "0f586ce0ac78e23c0c70b456249b53e44c7a0c490a3109c172940696264f9b03"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
