class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.410/magpie-cli-darwin-arm64"
      sha256 "877a7e1c488cb9b2241b3fbb63e8e799b151cc6582532576fc5c993024c3b9e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.410/magpie-cli-darwin-amd64"
      sha256 "855bdb52d79781d28ab0ae34dcf978051aead65687f6d572a9b79db870017e13"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.410/magpie-cli-linux-arm64"
      sha256 "6a1b2b2aa17073598b2c147ffc8126fc175c719576ddfa0e71bfad185c4c2b13"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.410/magpie-cli-linux-amd64"
      sha256 "dd15438660890a6787d78a76c4e799e10ad9d351b5531d1e0fecc4ddcf0d456f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
