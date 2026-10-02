class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.654/magpie-cli-darwin-arm64"
      sha256 "214be36d028b33038cba58bcda23ba6401c84449cc5d8d29fe3cdfd86c11dce2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.654/magpie-cli-darwin-amd64"
      sha256 "06197b1c4ad56370c676413cfb94cb4a4c310368944d3550c6f04bc3a37406cb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.654/magpie-cli-linux-arm64"
      sha256 "2c814e96c9dee484eccc17f95e852ab262b3a5c3ece099ac15f7e0832630d45f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.654/magpie-cli-linux-amd64"
      sha256 "ae4045395c72ed85d3d1f53a466434a6ea7c5d05084575878384aef104088322"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
