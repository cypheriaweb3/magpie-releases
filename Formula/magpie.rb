class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.273/magpie-cli-darwin-arm64"
      sha256 "46d34bdfef2ac718a1a07c0cc6e315e8f282205b37bccb826759fcafa9dac115"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.273/magpie-cli-darwin-amd64"
      sha256 "573241494fa70990958c6a411efc78779bdc50ce76d09c65175690b9bda440e0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.273/magpie-cli-linux-arm64"
      sha256 "22c232d2bfb7c004aaed9f493c80eb002855d36e7a4b6f4983b8dfede1df0d3b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.273/magpie-cli-linux-amd64"
      sha256 "75d5771077edc54d6342c27e56390c883e84715fd3c47dee58285dc5e0f5ec69"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
