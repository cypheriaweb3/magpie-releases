class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.281/magpie-cli-darwin-arm64"
      sha256 "9bdbbdfba79bb19bf875a2e68c38575c04e44e26c73245f6f588b7f761e423a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.281/magpie-cli-darwin-amd64"
      sha256 "6b8cbc5e7714d4b48cc32cdbf00360a7255fb246335d619f7664d46375fcb442"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.281/magpie-cli-linux-arm64"
      sha256 "28f04b436e0d6ac4c2f7de947faaabd998e32715d50dc9c39e6ea2574af42fab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.281/magpie-cli-linux-amd64"
      sha256 "e89724bcd9f3281c467d27761dae6faa0b786f63bf20c6e286e8a44bc44c6e17"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
