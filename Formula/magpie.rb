class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.860/magpie-cli-darwin-arm64"
      sha256 "27dd49a806ecfb7f692220a7e195146119f8d69d6ea54b270dc2baf96cd7c89b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.860/magpie-cli-darwin-amd64"
      sha256 "c2540f2a3aa70c7a0653e2f12e9a15c11836f3068391d20e1f671ee9d3afdfb3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.860/magpie-cli-linux-arm64"
      sha256 "d25ba24430650a4b9433cd13e369231eaf2f3cebba280d81ea001fb82a6c92bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.860/magpie-cli-linux-amd64"
      sha256 "7834fd30e89826cbac24387a6914e13bd46717a11ae7dc52a8ef6f284f443b89"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
