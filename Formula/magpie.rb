class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.576/magpie-cli-darwin-arm64"
      sha256 "c397458797805482fd51f74b2187629a590f8bf4830644ba8ad1d41a9b82f7c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.576/magpie-cli-darwin-amd64"
      sha256 "ceaf9c509d8a9314d70fef8e0b62268abaa194c059808cbd567cc8a4ad548cd7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.576/magpie-cli-linux-arm64"
      sha256 "5ca4808120c6ef0e67620f9c970f612d73938f16527e6060170e6ed2e4cd2ef2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.576/magpie-cli-linux-amd64"
      sha256 "8f12c400c12f16a2a4de6f64f0ae1cf662848868083f666fb9f05b5952ee3833"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
