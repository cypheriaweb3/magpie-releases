class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.681/magpie-cli-darwin-arm64"
      sha256 "33f7da69836d5714ed2f78e44a7e5b45d387da13ee80d7bb5595ad6e2c7f9b45"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.681/magpie-cli-darwin-amd64"
      sha256 "483f3e7a39a7421d6290f2587e8a0ea479593abdd9a6c2a0fd79e3ff92fbf845"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.681/magpie-cli-linux-arm64"
      sha256 "03c4c76815b01403d8cd26a5b1bc7f49bf08cd8ecbe64aefe96b7f99d8571fec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.681/magpie-cli-linux-amd64"
      sha256 "ad5f74c547f7490b7c4cd696964c699bda225611bfa4030d197e1f216797df6a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
