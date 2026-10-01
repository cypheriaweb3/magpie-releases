class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.575/magpie-cli-darwin-arm64"
      sha256 "e18b8575d5eb7366dde397c5ace035a6feeb9336fb2548957218bc3ea86f2b34"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.575/magpie-cli-darwin-amd64"
      sha256 "398920bd13f1520158c01ddefd35255afaf39caa4694d966ad944aa4638e3d49"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.575/magpie-cli-linux-arm64"
      sha256 "cad7df329dbd8014499ac4c89589d7e48d1f031950a7aa76af69c7cda79e1649"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.575/magpie-cli-linux-amd64"
      sha256 "c32a807cfa353615fcf127faa08ce4dcc3dc53385b97c36d842132b7a11ac7b1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
