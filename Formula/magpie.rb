class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.835/magpie-cli-darwin-arm64"
      sha256 "bd948b0c8c1bb86f82152f4eadc15b191eb919498bd47a30d013b5ad8fdc8d7b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.835/magpie-cli-darwin-amd64"
      sha256 "3688cf758b47ff5313f5375ad7db40fc17085d7066bb0695e35e18d00d23cd71"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.835/magpie-cli-linux-arm64"
      sha256 "93594d206e0d437dd40ec7405ca261180c9acc7c8602961bf1aa18f3df3a6c50"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.835/magpie-cli-linux-amd64"
      sha256 "617cc36c85ea6db8db7002cc0722897a415e56644f61fd4734b65d7ddf20300e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
