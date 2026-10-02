class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.691/magpie-cli-darwin-arm64"
      sha256 "45e46ed821d9b598c1240db26faf055c2ce73c2364a364e12fd8a6edc313cc97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.691/magpie-cli-darwin-amd64"
      sha256 "b88bdce717e6ab5dcc2b97316f52d8719075ba6de90d0595ab091e6040951f1e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.691/magpie-cli-linux-arm64"
      sha256 "7c3a06089bfd9bfe55b9ffb4b5b4de60003e1282096c59fd2734a275d198165e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.691/magpie-cli-linux-amd64"
      sha256 "442ce60f5a52c7f40369013904862d4a561cd062c12777066ca2c0f1f1bb4c4d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
