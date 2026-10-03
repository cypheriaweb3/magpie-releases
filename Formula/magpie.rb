class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.702/magpie-cli-darwin-arm64"
      sha256 "1642412bb73859544d12622c8206dd759fe16a5ffb024e5d70277a2a7edae49d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.702/magpie-cli-darwin-amd64"
      sha256 "60ae803ece2a25b03f88c8141d162e80a5022c62bffd60e817e59e6933f089d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.702/magpie-cli-linux-arm64"
      sha256 "a3d87919fb057d6cd522fe6f7377643d1a228649ca0b6964d5347291c8d414b4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.702/magpie-cli-linux-amd64"
      sha256 "daa01f094f5e6cfc0dd7e999f3b0d1a09e9c24f320cc29e7f559accbbead7dbe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
