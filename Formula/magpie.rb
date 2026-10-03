class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.731/magpie-cli-darwin-arm64"
      sha256 "761dae82a90b1eba47d36e833462ebf22333b0910953e8ba62c1788a336060af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.731/magpie-cli-darwin-amd64"
      sha256 "0d85e66c0e0a91ce3b77b8edc820607ba151f3bb68860c28483ab4cce0e173c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.731/magpie-cli-linux-arm64"
      sha256 "4cd88bfa02488d745d30657fd2eb611680362eaf784fd687fc081c45be3494f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.731/magpie-cli-linux-amd64"
      sha256 "3974e1c3fd0726b73597df5bb1b169a6db87f8ea8d27dea6d94be436bde3b01b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
