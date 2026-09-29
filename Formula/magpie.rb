class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.394/magpie-cli-darwin-arm64"
      sha256 "19a700c6cb1e67e82ba6d0f6c673d5aa0c37f6e024b21583dfffcea6c3e0ef9e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.394/magpie-cli-darwin-amd64"
      sha256 "b8e68ad7e048f5552247f1d5880fc1dfd97d4073e7b0fc11300d426dcef64ac4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.394/magpie-cli-linux-arm64"
      sha256 "eb49e18a80ffd1d5eb9312a0541c94d9fb54d4a172cc3d89ddb216202ba5efd5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.394/magpie-cli-linux-amd64"
      sha256 "0441adc03ee202a2fa45ce05bd7a90b2a82a8a954191f04b5bb22ccd33ca35c1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
