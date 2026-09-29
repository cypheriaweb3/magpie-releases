class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.432/magpie-cli-darwin-arm64"
      sha256 "cd4897a4345aa2d539bb88ec32d67d9b9a220726c42d2bc89ebf0e76a4b1216e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.432/magpie-cli-darwin-amd64"
      sha256 "48afba78b21cb8a506140c1e4712916d3f293e0aa746c7206dd6f38a69e795c1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.432/magpie-cli-linux-arm64"
      sha256 "6da9a85012d9e163fd5555028475a670ebe14000f155087a20a5a490c832f149"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.432/magpie-cli-linux-amd64"
      sha256 "ec3abc1c0a50f58bbd4b62696de0c8a1cd6afedcbd3a173110ca0b7b3558bb82"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
