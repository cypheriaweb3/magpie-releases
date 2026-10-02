class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.636/magpie-cli-darwin-arm64"
      sha256 "d5538bb3c808651d39cb2ac7d28e15c654ba3993ebb5092fd7a4d875ab9f9c79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.636/magpie-cli-darwin-amd64"
      sha256 "8cc5228c3379876a007338a8a9c763c0c8fff68604cf58069d1b523e7b41b5c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.636/magpie-cli-linux-arm64"
      sha256 "33ea8c0f1f62be2a2afed68c8f07c1ad77b2aaefe1c9094b422f0589b9af9d77"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.636/magpie-cli-linux-amd64"
      sha256 "e0f838aec6f8303bd45af9ec43266e7fc0250fc334df14e3c11258783eddd99d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
