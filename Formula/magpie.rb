class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.724/magpie-cli-darwin-arm64"
      sha256 "655f2d41ba7142a40ac9d18b50f98e268268ec4d4416185ce6a3a2abfb62d2ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.724/magpie-cli-darwin-amd64"
      sha256 "434f1bb1eb4796564b12e2befb98a622888a60b20459a9cbb86a75e13b884010"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.724/magpie-cli-linux-arm64"
      sha256 "c7c9aaf360176540603660325ff1a203026a05869d07b59c2ded3f8714e8d16d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.724/magpie-cli-linux-amd64"
      sha256 "6b6563bf5cb161c51ec9aef7fb169924a8fd90bd89dc0ccd4ed2975028247ca9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
