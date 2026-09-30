class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.518/magpie-cli-darwin-arm64"
      sha256 "2effcef624e47fba94fddb1ca4840da0e9ab55c67542d26bafa6bccf713e2ccd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.518/magpie-cli-darwin-amd64"
      sha256 "c0675811dc173aa4b4c968219af1d91f4b152260c0a7a9b4adb11d764e524896"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.518/magpie-cli-linux-arm64"
      sha256 "b3ff8d878c38c13cc3f4cc0313ad9e36da10687859f05fa34ec0b3d53c32f357"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.518/magpie-cli-linux-amd64"
      sha256 "dc88876c15038340d96f5d2e528dfa840582dc89bd0bcd92178d68ec1ce6edd1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
