class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.223/magpie-cli-darwin-arm64"
      sha256 "3d42eae4574ad50e2641d62e7efdfc5b67556901b6322d2065b496ff2d4f6a9b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.223/magpie-cli-darwin-amd64"
      sha256 "fa72ca131d4fb1a1a14d64d5f08e3a4fd9f6060ec6fb04f90e8e9b6dac7ed315"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.223/magpie-cli-linux-arm64"
      sha256 "7245ef809cfc91697c5317e419aaf8475a861c87831d8a91151529b0f8193f0b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.223/magpie-cli-linux-amd64"
      sha256 "e5ce3478c1c926d10b430bdee4f2d1a75f575f22dbef6f42664b68ad91a84edd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
