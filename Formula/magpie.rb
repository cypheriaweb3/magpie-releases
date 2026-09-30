class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.455/magpie-cli-darwin-arm64"
      sha256 "5673774901292f9e9e2cbbbc86d3bffe6fe26139fe531d9372f6577607428001"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.455/magpie-cli-darwin-amd64"
      sha256 "551b1545a1a60f8eeda2415863e8a0a4d05f0ad37d209d3abf8e0c95669407f8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.455/magpie-cli-linux-arm64"
      sha256 "60e1a0b5664671fbd9bc89b3ae1488ee5f059fd701be9c597c357aa11c29c3c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.455/magpie-cli-linux-amd64"
      sha256 "02446af1c2d4396fb0242c5943be70d81497f89c457ea558da681cab1432307b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
