class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.315/magpie-cli-darwin-arm64"
      sha256 "cba8ef2aa342b4818481aa7a6ca71901a78981c2a430efca4978eb22a33b6fc6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.315/magpie-cli-darwin-amd64"
      sha256 "e4163f493499f47a2ed5caf0e644d2ff09d559350c908accd22e099beb1d75c9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.315/magpie-cli-linux-arm64"
      sha256 "8ca254b1be392055d9f212e270ac02038fa4d76b2741b6a41249de245116270f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.315/magpie-cli-linux-amd64"
      sha256 "701137136cb8874afc324cfd905c53a50c6d794b7553cbc2d26f99749624f26b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
