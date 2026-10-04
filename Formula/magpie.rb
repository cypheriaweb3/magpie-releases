class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.809/magpie-cli-darwin-arm64"
      sha256 "d189fb8d803078dbcb1b2e6fe07bcf4ec77f76b677c11b7c216c98f88c9159de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.809/magpie-cli-darwin-amd64"
      sha256 "41c137441c813f64f3c28f881c21e1f1ac1e5042869b8279c50e5594ff3cc5f0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.809/magpie-cli-linux-arm64"
      sha256 "1bd2da61004869ff9683d82412c0ff935e353a11a3f3c314090f145ae6f34112"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.809/magpie-cli-linux-amd64"
      sha256 "14d7896d89c686ccd3cf544418cf3e45c3313dc8c8e04985aa5bc7389046bff6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
