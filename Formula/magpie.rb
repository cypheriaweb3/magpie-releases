class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.431/magpie-cli-darwin-arm64"
      sha256 "6b9d6e9e1efa9f2d8edb0a664ce25fa9cfee428852144ddb7f7ff0638a3be26a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.431/magpie-cli-darwin-amd64"
      sha256 "6e6e34f4090b63f88e9642f09395f9070a8ff6fa71218c3a23427e76d05feb35"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.431/magpie-cli-linux-arm64"
      sha256 "d99610737aab4285810632446ba22de443cac49a7fd89472b63c632442bc8334"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.431/magpie-cli-linux-amd64"
      sha256 "177843707b6942b700e107a6c7b71f44f7ac5f7c78353274d1666f9e1d89cd90"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
