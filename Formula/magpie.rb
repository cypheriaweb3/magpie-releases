class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.652/magpie-cli-darwin-arm64"
      sha256 "c8d6b8bf6c02c8f99a8abeb28c0d3b2b311a449a81d9c56e3824b1ea83abf7b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.652/magpie-cli-darwin-amd64"
      sha256 "e0990492b693e879da8036d6f2dc5e0919f19194c66bf4d6c6bc9dda7cc87a84"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.652/magpie-cli-linux-arm64"
      sha256 "a32dc855dfebc792e585eb782ef14781438a1147179efd3470fc47d0ddcccf02"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.652/magpie-cli-linux-amd64"
      sha256 "f8467c0ed434c03084a61bbada545372fc1144a02cbb6b961b07e3eb7748f1f4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
