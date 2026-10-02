class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.615/magpie-cli-darwin-arm64"
      sha256 "90d7519df20d8f05d2482d65d8c75d184ab8ab408047faf2950f8aef84baddb7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.615/magpie-cli-darwin-amd64"
      sha256 "b617069c21450ab9a13835b5ed646ed68f8970af9dd0f946dc4e5c389b2e7e30"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.615/magpie-cli-linux-arm64"
      sha256 "ff4b635330507887a363b04eaa014615aa016518664c5a505c41755d394c73b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.615/magpie-cli-linux-amd64"
      sha256 "8a71e61be1de86e7b485c6b6aa1d17d84d14f27cef2e8a4260b14e7a4bd52f45"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
