class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.470/magpie-cli-darwin-arm64"
      sha256 "0cdad29f0ebbcd2733cd95eb83458938cfbea77d3252952fd8742975fff8bfb3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.470/magpie-cli-darwin-amd64"
      sha256 "ee3c7de1c4eddbbf9f6aba59d3ef2a0d82108461491a228de3811e5217034eb3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.470/magpie-cli-linux-arm64"
      sha256 "3f0e43d39d2c53137173e22e6bc4fa7988f83b245f964a2b66e9e33a76a8f8b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.470/magpie-cli-linux-amd64"
      sha256 "f72ef0f22491cd7257a235e93d9781bca1c9fd589fcaa88a060a07efb3f480f3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
