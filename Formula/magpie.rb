class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.446/magpie-cli-darwin-arm64"
      sha256 "b86bf9789f54f4d18a09715361a71140ca8550f0cdcaeb1d7d0f2d5ce9db0b4c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.446/magpie-cli-darwin-amd64"
      sha256 "0c6e93894e59ee8cdc817a646ef5a2da910839fb13e9feac36cdd287c7fdae62"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.446/magpie-cli-linux-arm64"
      sha256 "7a399b4fd830ac6ae0833190e473cedcf2782543454f0a84d975d2495d37d93e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.446/magpie-cli-linux-amd64"
      sha256 "2313f6f60fbc1bcbb9aff3a651f4f6fd9a198d8d9784366758df5b2ead334add"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
