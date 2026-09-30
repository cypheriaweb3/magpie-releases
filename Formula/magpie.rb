class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.523/magpie-cli-darwin-arm64"
      sha256 "1d7fcd80a020f6bc26955c32d7bb7cdb156004d330e207622600e52ca7482948"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.523/magpie-cli-darwin-amd64"
      sha256 "6d2cf87bd248e73eb19b41a1dcaf90c5c81e1ea0a413a2115fbad6b3c26bc8aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.523/magpie-cli-linux-arm64"
      sha256 "b7415ba670780c5d5443b60995590bb393d2404d910786e3b603bbc6bfe0b1fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.523/magpie-cli-linux-amd64"
      sha256 "2ca20b5ff040b66791ac024af10b7d1bcb796c82d5d733db0ef6b83e20eddb59"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
