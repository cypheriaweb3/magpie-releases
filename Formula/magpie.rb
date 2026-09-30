class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.527/magpie-cli-darwin-arm64"
      sha256 "0e945c909a3dafbbb2584a3093156e07d910b899bcecb0d0fb6a9651556352f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.527/magpie-cli-darwin-amd64"
      sha256 "f6786c4fae1df7b27adceb67f48743fca77220690a8992640f81c03083675126"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.527/magpie-cli-linux-arm64"
      sha256 "afb1719798bb36df3fcf6609f9b6efc83cce9b78ab4f16355890d2e99bb09f63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.527/magpie-cli-linux-amd64"
      sha256 "81a314fa37b598f479f46ce5579786f3b0c98361dce587243f8cf5a852db07ad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
