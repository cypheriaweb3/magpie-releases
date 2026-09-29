class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.379/magpie-cli-darwin-arm64"
      sha256 "e5fc245f306fab15097c8ab7de61c78670644fcdd3995faafeb46bb4e27940e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.379/magpie-cli-darwin-amd64"
      sha256 "7fbcf67fea3c52340cc55f86d9bf6254ae8f7a5193278e3068469c902642e715"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.379/magpie-cli-linux-arm64"
      sha256 "558674e60b4518e8986b5d5e922e112976c90215b8e4af2c7173a23e9151c212"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.379/magpie-cli-linux-amd64"
      sha256 "0b4a6a0448a6ed2b9eb425beb5b62b8cb673005ff9db2f042cb41ef45dc22fab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
