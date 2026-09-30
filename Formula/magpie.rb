class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.440/magpie-cli-darwin-arm64"
      sha256 "318b9695c7e09de9bd87446098f25a838a0fd6990c2b026ca66f6fc6e24a28bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.440/magpie-cli-darwin-amd64"
      sha256 "18890242923549d4d212bc58106c5e93aa93c9bd0caf3ed41dcb9bd503a20910"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.440/magpie-cli-linux-arm64"
      sha256 "0988e7fb3ea95a3de97d944dd898b81e581ce349296c91da2f94df3cd1f27a63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.440/magpie-cli-linux-amd64"
      sha256 "b7df95c6c3f57108ca2c04e62dfeb86b3c4d5cde8719c2b1f7aebe20e0a3306c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
