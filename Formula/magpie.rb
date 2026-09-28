class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.250/magpie-cli-darwin-arm64"
      sha256 "e820a93b2760992d5bc82044c5f6e7e68bab593b0d8934f4ffed533b8cd05a28"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.250/magpie-cli-darwin-amd64"
      sha256 "c8aeffe99767a019d44bc9bc330b457f1abf7174fc6854c306597b88242583e0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.250/magpie-cli-linux-arm64"
      sha256 "c81b3c987880b16de147c3791b5b09f818cbc337f4cbdc6635dfc3cef249ab0b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.250/magpie-cli-linux-amd64"
      sha256 "c129795374f95e51c2e50c3b2c3331a41f084a190114ee42c75fd0bb533ebabc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
