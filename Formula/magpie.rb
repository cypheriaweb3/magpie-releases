class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.312/magpie-cli-darwin-arm64"
      sha256 "5c5c0232b67e4ee8eaa4e03bde73d112e722910717a0e3ec1933a298d48a964b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.312/magpie-cli-darwin-amd64"
      sha256 "ceb1fa9af054b9ff166f418839d8cd2b2e2b3adf8bb13dcd9832fc2d729de6de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.312/magpie-cli-linux-arm64"
      sha256 "5ef87e601e2cebc40603c5a2c25fab51506687e7b230d1d4ad05802c604ccffb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.312/magpie-cli-linux-amd64"
      sha256 "ec3514c97d5789d4d8958bb542358365dcf5a194e433c1b24bf129bd8b7cdbce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
