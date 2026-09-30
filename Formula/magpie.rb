class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.503/magpie-cli-darwin-arm64"
      sha256 "ceabc560e112508302b0b99ddbeeffda18473fd2468943f74e6406c90fb38129"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.503/magpie-cli-darwin-amd64"
      sha256 "e328f6214c60c22714a1d08477894a18f82d7fa22c39d50e28b6a205970f0338"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.503/magpie-cli-linux-arm64"
      sha256 "892717a036a489b838411c517b64e25dc3c1408a00ba47438ec55f3e71fe4356"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.503/magpie-cli-linux-amd64"
      sha256 "9b597e9ca0856d3444e270ba023b8dc555e66876aa97a8d9fa5706d9a2f3670d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
