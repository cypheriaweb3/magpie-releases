class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.878/magpie-cli-darwin-arm64"
      sha256 "12c84a61593cbb1679d815a40f55c5985498f9f757aa507fe23c71394414f836"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.878/magpie-cli-darwin-amd64"
      sha256 "6a7ada6d55db2844f8484dd9daed35a66d6cc12f98fad737f69d9bd179f44253"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.878/magpie-cli-linux-arm64"
      sha256 "b86e00db3c6d2f6e85c100f8aae8b7c594ce676281153fe5dcef86e744df74e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.878/magpie-cli-linux-amd64"
      sha256 "3cb5746ab350fb0cdf307bd960001564fdb8ed6e20bfba21275e7be92b01296b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
