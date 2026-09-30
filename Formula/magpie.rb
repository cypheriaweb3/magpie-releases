class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.447/magpie-cli-darwin-arm64"
      sha256 "c0a9751f82ae5dcdc366e8ac94321d87483156254a27f3d0113eec9358907f4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.447/magpie-cli-darwin-amd64"
      sha256 "1ce67a5866649626b866512efc79953121ffc5d5cd36c0b198cf37edeffdd05a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.447/magpie-cli-linux-arm64"
      sha256 "77eadf3c8f03fb540af18703c12de6a9e3befd88be828c7498937e2d47ed34d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.447/magpie-cli-linux-amd64"
      sha256 "6ac44e6f9e575f9529a8fb3c046561fcf2a9315db65ff041b06b414fe96b4797"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
