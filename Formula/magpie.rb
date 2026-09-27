class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.162/magpie-cli-darwin-arm64"
      sha256 "50d5460d70069a66ea0f2f8a305fbc260b123e0f6af6bca99d26f7421463137a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.162/magpie-cli-darwin-amd64"
      sha256 "39c999a59c1014600057734be765410c081e338323d9c9a0d5705e0c954d1786"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.162/magpie-cli-linux-arm64"
      sha256 "2873a63a17cc866bc665ff4ae94c27abc41ab025a8528539d524e78d071f2c4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.162/magpie-cli-linux-amd64"
      sha256 "da3ea335146754427e82b565ae3a864e181d27b060a0ce10bc3c8e6a3a23f6a8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
