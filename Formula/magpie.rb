class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.762/magpie-cli-darwin-arm64"
      sha256 "a21b4f5582dbc0d897bf78f54797ed3a524f9e73babac924cc1cff0eb903bdde"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.762/magpie-cli-darwin-amd64"
      sha256 "afa9ce700371c1eaa1248bb9123fcda83f2c18a651aa7b2f7070419033e8aabb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.762/magpie-cli-linux-arm64"
      sha256 "7e6f73973bfb731b94f8f5537ffb4b085154fe7519a3a8343524f67bd5d4c088"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.762/magpie-cli-linux-amd64"
      sha256 "1fac46c3788cf2592ed1383771316b6ce65a064452b30fbf1f460875faf87dcd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
