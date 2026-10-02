class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.688/magpie-cli-darwin-arm64"
      sha256 "289c52d0a40e2a842f73f01574ad16ec8a03d922f0b3160b3e979217128539a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.688/magpie-cli-darwin-amd64"
      sha256 "c2c208d5aa917ab369b1dcb86c2f4dd15a814ab59dc8758665cbb1d23204d8d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.688/magpie-cli-linux-arm64"
      sha256 "711fed0729b3d8d6ecd2393d0d0538d863c002250a099d3c5aa34d2e5e4d8106"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.688/magpie-cli-linux-amd64"
      sha256 "3a54bec6a09413dbbe511702223b86bedddea385ee39e0a545592cfe9431a474"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
