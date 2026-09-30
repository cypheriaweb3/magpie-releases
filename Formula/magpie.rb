class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.496/magpie-cli-darwin-arm64"
      sha256 "b1938a88cfd4cdbd36bd248553ed612f363c12ae21ae866414d8f24cd40e06e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.496/magpie-cli-darwin-amd64"
      sha256 "f9d24c6025a3125ee4fa9e1817a06fe6caa3724ad169941bdd46811427d4fd5d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.496/magpie-cli-linux-arm64"
      sha256 "c03ba28b010d9108d5ada8228fdc11090fcddc7611c02ed1a11f00dd5f703927"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.496/magpie-cli-linux-amd64"
      sha256 "5171b1add243d81ef0734769147d41c50655ef9b508ee50df5ebf592bdf56cdf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
