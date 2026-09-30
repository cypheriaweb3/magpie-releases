class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.512/magpie-cli-darwin-arm64"
      sha256 "c8b3cb2dace238122c4d95c309ce210ab093c5570eedffafdb9c0c27357053a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.512/magpie-cli-darwin-amd64"
      sha256 "ac6f2c854ecd60d7ea9b17d379b57392f7e6cc3989341458ce95a8aab7d2c795"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.512/magpie-cli-linux-arm64"
      sha256 "bd7b3ebd325de76f1ca8352392244db034e7dd3c9afb0f2a44a479561e75094c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.512/magpie-cli-linux-amd64"
      sha256 "50e6672b20666789b2e60aac1cc5bb7e7a0e14f3f6a7830861db306d2db9d101"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
