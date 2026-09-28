class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.290/magpie-cli-darwin-arm64"
      sha256 "9391591366d4c6179127033388fd3c27c97e7d07a3f2e37d33107ad873902543"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.290/magpie-cli-darwin-amd64"
      sha256 "ca39973934741295dd3d1edcd3eb68948bbc95c4f9cc97ff6315fe364a6999a6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.290/magpie-cli-linux-arm64"
      sha256 "e167416bb86ad7e7b41933c7ae90b8d53c0c1a0205864c55d62d06e79bd77aaa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.290/magpie-cli-linux-amd64"
      sha256 "7d9dca4091c7fe64e870abb9c796db2248e9a2ba8b12a6ef3992fae2ac544402"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
