class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.880/magpie-cli-darwin-arm64"
      sha256 "a1bab026d90c04200490933e33d9bac4e995ba2113fa555950de37fb6d5179d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.880/magpie-cli-darwin-amd64"
      sha256 "a29db7b003b0c4d59547c775c78ee0e2311fc2faec77da493fbffd119457f5e8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.880/magpie-cli-linux-arm64"
      sha256 "ef06292b219dfdd04da42f55f1468eabe78974f45122356bb6b7ef7eaa9d381f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.880/magpie-cli-linux-amd64"
      sha256 "67a840548f5785518c803f97c22dbfdde71b6a75edc2bdff44dd80d683bfd71d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
