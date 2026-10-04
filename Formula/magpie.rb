class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.883/magpie-cli-darwin-arm64"
      sha256 "fc96202c3dbf213ba30be42144babf57b3dcde40bf76a9225067758442e16fbf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.883/magpie-cli-darwin-amd64"
      sha256 "6cf158b2ae85db736ba88757096eb9f0f9efc3d56abd074fb538f52843836d66"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.883/magpie-cli-linux-arm64"
      sha256 "ad9eecd80f53d52e95313032dbdcba2b29486e081917e6c1569c9da7a8ed4cd8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.883/magpie-cli-linux-amd64"
      sha256 "776d04df9489afdc0f1dae5333d739008a6c124b84f868fa0b61de682f13a496"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
