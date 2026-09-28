class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.272/magpie-cli-darwin-arm64"
      sha256 "5de8ee80d1086f6532df99c7d675ab74f46227abd06c1814403c33bd240b357d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.272/magpie-cli-darwin-amd64"
      sha256 "2ea006d693c7f6b8634c372da40071cb51e562e924c7eb009de5051d8b4c0e21"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.272/magpie-cli-linux-arm64"
      sha256 "6456a9f83a35314614614e64638160203dfd1b411542ab76ec3edc21fa0722a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.272/magpie-cli-linux-amd64"
      sha256 "37425dbd1e36c1c34a03951a0e6b62f72b6b5fd23dee2c83f6a616d6a4696d0e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
