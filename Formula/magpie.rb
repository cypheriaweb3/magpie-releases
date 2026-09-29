class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.383/magpie-cli-darwin-arm64"
      sha256 "89029d8bff1fac9cd095a8fa70e3481935c377fd5ca42301af29ac13f9464031"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.383/magpie-cli-darwin-amd64"
      sha256 "a1bb64e7440d4a952b9150629f2db0f5cb8844e7b2a3ee7e30dda9e1094dec31"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.383/magpie-cli-linux-arm64"
      sha256 "e0b6921c84cccba76b6dd928749ef1166212f85c07cff5a099c2db46cd800981"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.383/magpie-cli-linux-amd64"
      sha256 "e116b97cb95da9e363d110ba168cf536c2b3baf538093cff2bff88c903d2325a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
