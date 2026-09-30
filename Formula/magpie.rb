class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.454/magpie-cli-darwin-arm64"
      sha256 "e24cbb2160d16bc51999d89b3c978c7e8c90d81d7e53aed5db2d06e45631f483"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.454/magpie-cli-darwin-amd64"
      sha256 "ffe00a8f2299435a268e4a4cea5cbe38f1cb5e736b52e0e8c740a428368a5319"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.454/magpie-cli-linux-arm64"
      sha256 "f904ed79217c7271832d72a2a121284d8a2a15746edf497938cada62b4ab5679"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.454/magpie-cli-linux-amd64"
      sha256 "397691e3c5890bdaa619ea45f17088777b95e5d6fca365c18d20fa502a56acdf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
