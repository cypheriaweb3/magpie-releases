class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.155/magpie-cli-darwin-arm64"
      sha256 "4b6ebdd18445cd6800fcd62da906753cf81abcebe0ba64d5497b14677962f52b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.155/magpie-cli-darwin-amd64"
      sha256 "6a33f476d0abe0b9273731a67a37a7e4265725bc7450f08fcfeae11352e4d83f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.155/magpie-cli-linux-arm64"
      sha256 "b7fdb678ade81c5434d2d133234a4f4353ef1b8f57fcb612c91f02bf37e5fde8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.155/magpie-cli-linux-amd64"
      sha256 "726d581b93530531d32fba2a6dd93880112f622ed77664af302b1d21c20048ec"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
