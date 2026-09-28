class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.277/magpie-cli-darwin-arm64"
      sha256 "4e8ca464d65ffeb5dcedfa901839ac96a22ebc3d78d20ddb06f5d832798259fa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.277/magpie-cli-darwin-amd64"
      sha256 "e475e3f94c12397800f98c9c5d50d4f409f74eb302c7df22c8b814052ea091e5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.277/magpie-cli-linux-arm64"
      sha256 "0a4cddcfa7ea73f97b95bb7940a7e4aa4591181771b42b6ddf76dc6f83803eb5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.277/magpie-cli-linux-amd64"
      sha256 "65dfeef5a3fe623102be91d81882a5436d490189ad48b4c5e5df3e261fcea456"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
