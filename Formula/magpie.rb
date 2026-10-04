class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.812/magpie-cli-darwin-arm64"
      sha256 "5855b962d4f3fc0b368a1014a3f066e1ff4d110089b460a248b17578850197c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.812/magpie-cli-darwin-amd64"
      sha256 "9c11e20e8b069d6bcb8002ab2ece4a8b564bf44d2687c63bc6ecf029c68344d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.812/magpie-cli-linux-arm64"
      sha256 "74a6f1829fe2054a89bceb249052dab0bdd5bd9c2b3d67ef72ce2fbfeed7c5ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.812/magpie-cli-linux-amd64"
      sha256 "20088b49bf4c9321ca71f4247da64fa0acc31641a7161ccc7d2fe7dcbb66b600"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
