class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.276/magpie-cli-darwin-arm64"
      sha256 "11aa93fc720e3fef040f9cf9462424ed6666a5114a87baac49c3bb2bc2776720"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.276/magpie-cli-darwin-amd64"
      sha256 "f2edce015568304e148bd6369d80261b6851210a6e9d0b962e67157adf97ce9b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.276/magpie-cli-linux-arm64"
      sha256 "90ab01af8817901bc74adc96b423c1a54a50d781f376461bc585a381924462d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.276/magpie-cli-linux-amd64"
      sha256 "354f2819e775e467b759a14b1c404329c5832cb48b2c837d81119711f1f8bf67"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
