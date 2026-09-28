class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.310/magpie-cli-darwin-arm64"
      sha256 "b53b4dd3c4336006be493dec8bae271b3ae19824f61ce1b7bbb0c0e9845de897"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.310/magpie-cli-darwin-amd64"
      sha256 "398a41491e4b4cd9ee060fa4af8adca2146e946874ba3403ce5bdc47e559392b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.310/magpie-cli-linux-arm64"
      sha256 "5785fb5d49557f4cbf2d69f1ee73eecceba3e4c7f126fc4dc3251d2458fb7a5e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.310/magpie-cli-linux-amd64"
      sha256 "0135a08a2c249cf1c4eb60129421c97f24ede58636047342982bb31d2d130283"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
