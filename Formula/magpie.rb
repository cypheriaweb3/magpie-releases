class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.609/magpie-cli-darwin-arm64"
      sha256 "bba4a5058bc0a72a9e8d3a6972b02bf98f40be5564a036d5598ad67c7ee04a39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.609/magpie-cli-darwin-amd64"
      sha256 "045c65b3be896c3ed64463e9bb4c2c5fc5b7d3bd5dc40a10c40b6f11010d6974"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.609/magpie-cli-linux-arm64"
      sha256 "d8f14151ebd1ba4f5d4e20271f8e6b83984d2db16bb040b2e30615e2d12bc2ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.609/magpie-cli-linux-amd64"
      sha256 "2a20c0a2a7a9e23329ee6f1a63da84bda069882e10bab7cd35966eb27789e560"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
