class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.623/magpie-cli-darwin-arm64"
      sha256 "64e0570da839ffd24742dd66757f99dac254bb768d3bbb1b3360eda22605ced5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.623/magpie-cli-darwin-amd64"
      sha256 "0b80e2a49dbcc52d0021f2af0bf91ad9b8cf78c9576b9aa90dd39b9042e20500"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.623/magpie-cli-linux-arm64"
      sha256 "4864e347395792462aa2ca574d4a5e44be2c4b00f5f2ccc7c4528d8f66faf7ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.623/magpie-cli-linux-amd64"
      sha256 "70f903ca5ab0c5438fe055afcacee983e25d545ac921e7cd91b8403f06e928f6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
