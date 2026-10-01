class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.610/magpie-cli-darwin-arm64"
      sha256 "ada71ceb4860123ed7a186a71e8b2d1e4f79b0d548d9d27603b0593b0748f61e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.610/magpie-cli-darwin-amd64"
      sha256 "92cb74d19cd823da9d8d311f8ad73c5a904b4c52561085edc47d5cf78a1b76da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.610/magpie-cli-linux-arm64"
      sha256 "e83b1ae9c82afce4b93ed762856884afd7c4c27f1f5f730ed11f72ef803328e7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.610/magpie-cli-linux-amd64"
      sha256 "737a8797e66b4aa5f2a32897805fa917d44ad2ca6c89423d5de20d682949af98"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
