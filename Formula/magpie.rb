class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.776/magpie-cli-darwin-arm64"
      sha256 "0e2add995f8e893c6023a6cd409671abbf2b8aecbaa7a06baa9f0a213c09d901"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.776/magpie-cli-darwin-amd64"
      sha256 "0da5b7c650046c78c048bf64cf53d4a21c361046e28a9d78ffe7e47a2d291d03"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.776/magpie-cli-linux-arm64"
      sha256 "fef2d642d5e6be3ee7122ea1af0d4e774b38a282ac698559318b388b6cc4aea5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.776/magpie-cli-linux-amd64"
      sha256 "727857ba8f8f62c2353617832dbfb6efad9b7a0bf3573b2e5ddf437c3528c7f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
