class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.190/magpie-cli-darwin-arm64"
      sha256 "14324722f620a977c9bf1fa263f1f1c5c43bad67beb1f14e16ab81a62e67aefe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.190/magpie-cli-darwin-amd64"
      sha256 "e8346ccfc3ef5b7117b7c9a6460519ebcd41c0717bbf3fe3bfd4a819fb425f0b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.190/magpie-cli-linux-arm64"
      sha256 "b414e04812ab56397ebf789e744c976e4afdfd6ec6c70bfe137ce05daca1d08d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.190/magpie-cli-linux-amd64"
      sha256 "4d1757e5f5f703be58e7274f40b3eea8e93601efb3f6ec99338a0d0f0d362b89"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
