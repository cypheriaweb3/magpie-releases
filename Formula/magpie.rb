class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.364/magpie-cli-darwin-arm64"
      sha256 "82b78a9aee7ca350ca2c5070706619b8c5b99f98a1f38471558d8750c566f417"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.364/magpie-cli-darwin-amd64"
      sha256 "6a9c62a0829432178a1f89506c03038fe6669d4afdda9f54c476f319eaa8a1a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.364/magpie-cli-linux-arm64"
      sha256 "02a2332d0026ac3352057438da92dc268a15982f2b22b06263dc7b089d94538f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.364/magpie-cli-linux-amd64"
      sha256 "23fbd5d8146a80a0f0065ddb62996e7e038daab89855b325368bca833221a9f4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
