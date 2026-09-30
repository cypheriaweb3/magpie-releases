class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.489/magpie-cli-darwin-arm64"
      sha256 "ce044adc27924b62deaa610aae4e1f39ed36563010c9919f95949bcf00a1576b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.489/magpie-cli-darwin-amd64"
      sha256 "e464149891841a5f6fd20bc6b9db6f8c239b35cc58e13dd1f7c401a18c8fc6fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.489/magpie-cli-linux-arm64"
      sha256 "2a44a41ebae6695ec26f4a7c50ab6a587d2c5b19dd19a7436b48b75e47853484"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.489/magpie-cli-linux-amd64"
      sha256 "0a0ac5db7d69693cb0e29dab069c1ad7f67ac7420779884d7ae94d58e36146d6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
