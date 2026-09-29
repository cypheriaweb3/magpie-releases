class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.395/magpie-cli-darwin-arm64"
      sha256 "087be416dcb1d7a7d3474d2e5ae9799f956f5f3777c5b47d136d48477aba3233"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.395/magpie-cli-darwin-amd64"
      sha256 "018b13054a227badaa328c16b9634976b4cc21a19268f24865612b371c13cdf1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.395/magpie-cli-linux-arm64"
      sha256 "079fe7aec49a3559485d151341dc2384045232501ae33cc04632c52233912824"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.395/magpie-cli-linux-amd64"
      sha256 "bcd4fba9c60fcd249da54e9b856ba1b8d0f54cae5d4ec0b324d18520e404992a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
