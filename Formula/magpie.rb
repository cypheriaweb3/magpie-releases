class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.686/magpie-cli-darwin-arm64"
      sha256 "f6d48c01203df2d751fd84aa4b7ec45969489904eb5071d5196f28331a9001f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.686/magpie-cli-darwin-amd64"
      sha256 "5c0e6b2c92060ae629364417bd295d60874ec69a3f1ef61de9a6014b10bf039b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.686/magpie-cli-linux-arm64"
      sha256 "7d2394e190aaa468889e502d8acc2dd4bcf851151f2b5f40dd52c4c317ea3674"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.686/magpie-cli-linux-amd64"
      sha256 "bb4c9c51eef716a981a10780166ae42c5a3971910cc9c8194a45ea01b6d33a78"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
