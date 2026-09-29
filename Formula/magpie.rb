class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.400/magpie-cli-darwin-arm64"
      sha256 "1c99d882ba3e69f04708dc1419e32beedf5dae88fb55e036e3d302a50bc6a28c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.400/magpie-cli-darwin-amd64"
      sha256 "977c17dc7f96b76e789a37e2f7a49a3041694827530323de71b9091743f8d6ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.400/magpie-cli-linux-arm64"
      sha256 "f2f56bb3f90e305ca942fbc19a56cb1cb933e79e7b22e17066e249ecdaf4e524"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.400/magpie-cli-linux-amd64"
      sha256 "61fffdcb1115fe7ae3bdacdb96d66b9518e42f6c12d4fe3df6034cca0db2e9fd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
