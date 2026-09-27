class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.208/magpie-cli-darwin-arm64"
      sha256 "ca4de4a2aa06e8914feae7aafc00e520ccfd96f70838859296d06ce972692cc2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.208/magpie-cli-darwin-amd64"
      sha256 "67ecfbaafc5de76651606f6ef9ee51526fb959318be1d94222aadadc2265fc6f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.208/magpie-cli-linux-arm64"
      sha256 "f4493646469ba262c108403986dc26559a38287458b489c872aff1003ca85932"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.208/magpie-cli-linux-amd64"
      sha256 "982347a9dc741254c014581328e5e122109204fcd12120ee54f468b0cc3d39eb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
