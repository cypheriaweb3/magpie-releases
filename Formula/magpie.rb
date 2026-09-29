class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.357/magpie-cli-darwin-arm64"
      sha256 "7eae29f8565f2f49a7125b673be1d2a8f8c8ca6bf8258602169261fc6a65db56"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.357/magpie-cli-darwin-amd64"
      sha256 "b60fdc4285506486ddce0e7b2d9174a410ed8091b27b53ce41bf3a0b0d14a47d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.357/magpie-cli-linux-arm64"
      sha256 "c49938dc64168fb732ac32404f6d5b9ba933041dfdc6684cc9434e9877348d9e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.357/magpie-cli-linux-amd64"
      sha256 "ad7c592ed8fd6c6b588c2aa305d8f01856959b842fbc03e4db68ead5105043e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
