class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.517/magpie-cli-darwin-arm64"
      sha256 "a7fe99908716165114951f09d5bed858ae0f53ded0512e075c1bdb32343da0d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.517/magpie-cli-darwin-amd64"
      sha256 "54fb287137de1786e8a30a73097109c2fb552d59bcb2c5ae5f85239d027aed2d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.517/magpie-cli-linux-arm64"
      sha256 "d7bc5d638d08c269864ec7248c1be05779cf422cb2e445931a9350785ceb9a52"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.517/magpie-cli-linux-amd64"
      sha256 "c5f09dcb485bd47ce140cd8087b29a7356cbbc504fb119e4a0a2c6638eb18fba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
