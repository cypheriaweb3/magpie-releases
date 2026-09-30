class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.485/magpie-cli-darwin-arm64"
      sha256 "7c093b673f2154e293642bdf7d8ea3696350ec5dc16e405af1ee2580b1c5b042"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.485/magpie-cli-darwin-amd64"
      sha256 "f796054899ff1656e205875cb55c55ffc03a82ff24054a710ccbee284e80d82c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.485/magpie-cli-linux-arm64"
      sha256 "d923fe9ff172d4bf07e70709863c02bc875619c6059a770b57d6717a8e333aa0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.485/magpie-cli-linux-amd64"
      sha256 "7f883cc79f39b006b3b2eca340edaea2c60e15e2a2f605eceea90b9dd16fde1c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
