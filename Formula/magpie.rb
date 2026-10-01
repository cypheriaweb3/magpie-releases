class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.577/magpie-cli-darwin-arm64"
      sha256 "d0580e8105ee04eb2ecfdcdc5d300a2a05005a9eb0ab745b6ec3b03ebded6472"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.577/magpie-cli-darwin-amd64"
      sha256 "0fa73e0fd0bda75f44a21d071ef2c169e95ec05d7e5f9c7dabc5a86302889f57"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.577/magpie-cli-linux-arm64"
      sha256 "b3bf900d6c1c368d535578fb572f8b57ff4506b36a0b71d0bf27374fd5917ec9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.577/magpie-cli-linux-amd64"
      sha256 "d6de0b7d34a251017dbdabcc2cc5540070d9bcdfbf8d91e0580f1d7bb5d0a223"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
