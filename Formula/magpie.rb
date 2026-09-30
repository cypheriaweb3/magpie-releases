class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.498/magpie-cli-darwin-arm64"
      sha256 "4303e5b02d80e1cd4e7be3ebec648739d47cc5c4e55e9cf6639cf6026893e69f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.498/magpie-cli-darwin-amd64"
      sha256 "553a02c6d324314ea2aedf4d3d84ab3e329b9232ba519eec777951a4f5c41031"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.498/magpie-cli-linux-arm64"
      sha256 "c49a976003193f0c7c70747ac28f92c6db91e176f103f0d2ce68be5b35ad18e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.498/magpie-cli-linux-amd64"
      sha256 "9323407d13f786b6ad71c4bfb0350178fff092acf62d0ad19a8cd148a1defd75"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
