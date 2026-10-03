class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.794/magpie-cli-darwin-arm64"
      sha256 "ab3b838fd864560953e116af775f7d65ef0a017f7c98c0de4da093d73a9d4161"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.794/magpie-cli-darwin-amd64"
      sha256 "0fe9171ba008d401d81d754c86de6b4aee8cf2c2680018b7affaf0b4aa6eb04b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.794/magpie-cli-linux-arm64"
      sha256 "8689cf72321e1b1c2614800e29f6d4b9f683357eaa5bf5dc22e21a7d9e136f60"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.794/magpie-cli-linux-amd64"
      sha256 "3e80a795d8e513523c0a262b38b7d3146f6ecc60a2259fbfe14f70908108eaed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
