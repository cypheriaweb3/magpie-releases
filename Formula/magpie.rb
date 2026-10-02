class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.616/magpie-cli-darwin-arm64"
      sha256 "a56a55edd5375a28ad4012f489da216577a308a864789e4166e489fce1ad63c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.616/magpie-cli-darwin-amd64"
      sha256 "2657589223a1a6ce18fe75fc787e70fe3ae708c1c78fff3f5aafca5bab4d52f2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.616/magpie-cli-linux-arm64"
      sha256 "8d4bf4b824c46aeeb9c791e00f649b8d6223f39b36fddfb551acb4f8d66bb41b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.616/magpie-cli-linux-amd64"
      sha256 "fb84534c79db2b2f05a9e2c4e1775520544fe0c1aec489400c23699c1696c332"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
