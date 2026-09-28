class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.319/magpie-cli-darwin-arm64"
      sha256 "f67cd31b446a887af741b8daa23fb9d15e2761acf4ab0c323ec8ffff2bc3736d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.319/magpie-cli-darwin-amd64"
      sha256 "4e33ec537dedf4b485edf4476e18c896c2df02e2f086d76452a264626431cd43"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.319/magpie-cli-linux-arm64"
      sha256 "7f7efefdecdd47f0e7f9db114d18648dbed6dbbd11c48f9c08a94687a70b96c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.319/magpie-cli-linux-amd64"
      sha256 "299c3168c1c84c641206532a27b54af76642e93bcdefb2452684e8e09f7958da"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
