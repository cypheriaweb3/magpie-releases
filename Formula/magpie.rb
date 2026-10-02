class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.646/magpie-cli-darwin-arm64"
      sha256 "fbaa16f50d0da9846b6e19a5b06af84c849feff4d07ada18f7f84ddae93e0916"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.646/magpie-cli-darwin-amd64"
      sha256 "c5852ed8958cec7822061ac32984fc2a99935f2e5fd1c8a24507d723a1cf9b45"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.646/magpie-cli-linux-arm64"
      sha256 "25ba038e49b8f271c0a0e022ae57dda37f1b7a81ef20e3952bc47af2aff4918f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.646/magpie-cli-linux-amd64"
      sha256 "2f4f811d4086eb4653aaf2ed69fec97216ed9055aab121632773841b7d2fc131"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
