class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.164/magpie-cli-darwin-arm64"
      sha256 "4eb27955022b5e6e6e01e15cd8f6f650f9d63822ec636c08d69fdf70c4f48228"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.164/magpie-cli-darwin-amd64"
      sha256 "a3dc0ca14928d804b9d07dc2a7ac2b41d0e4cff6ca12cd90adb9c9f499a1e336"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.164/magpie-cli-linux-arm64"
      sha256 "a469433f98b11f1520a49e2f379e3e358763175f4a62864ec1e64ec825dd30d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.164/magpie-cli-linux-amd64"
      sha256 "13ef9a7875a58e47462440aae44d3caafcc5c8aaea645a36b6899cc0ffc74a11"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
