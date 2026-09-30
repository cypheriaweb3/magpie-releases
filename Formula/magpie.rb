class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.486/magpie-cli-darwin-arm64"
      sha256 "df89839b82ded87bd669802a1850ad9c12bbd68e66729d4d1e31913e2d4f1175"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.486/magpie-cli-darwin-amd64"
      sha256 "d0931a4e644427b46f608cdfe7d0bd683a1996ba25f6733e96e98e1788117096"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.486/magpie-cli-linux-arm64"
      sha256 "17893c40634054ce23f576adf105daa68a535144b701d03b62ba18906ed5103b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.486/magpie-cli-linux-amd64"
      sha256 "b5538e46e593d46e6400de54c2e4d6ed8c4844be4198bd4336739c04014c9537"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
