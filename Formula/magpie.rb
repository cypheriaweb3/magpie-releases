class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.524/magpie-cli-darwin-arm64"
      sha256 "725fc43e046c1f21336caa5626d86778adf5becd0803d1b9f2f81535514090d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.524/magpie-cli-darwin-amd64"
      sha256 "9269512d6b2392d9bc715f9f57070da4a5ad652173cca74383329fab80580bed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.524/magpie-cli-linux-arm64"
      sha256 "750f82bfa03ea4d1f2c1dca004d53cb9a3a16c6abc6c016fd7498ccf5ab084f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.524/magpie-cli-linux-amd64"
      sha256 "68025e5644708309fb3c9466c4591c4cfcd51577e29075e0049016e3107c2f4a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
