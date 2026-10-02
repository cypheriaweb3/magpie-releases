class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.614/magpie-cli-darwin-arm64"
      sha256 "8afa307c7e4c18942f725675ca5762109413d931f021925bff2e436a2d375fc5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.614/magpie-cli-darwin-amd64"
      sha256 "9a2acff9346507bac154149878ab21ef5eba976e6b44877b541b856f5df10089"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.614/magpie-cli-linux-arm64"
      sha256 "2c703055ac48b067d62376f8ab1cdbdf24ef4bae620f20058a6b6394f0844aef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.614/magpie-cli-linux-amd64"
      sha256 "345fd3de0a460d2c2ab897a15cc0324879939da6e0cabaa5376ee0c965dd9924"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
