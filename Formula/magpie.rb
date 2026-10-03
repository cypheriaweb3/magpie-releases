class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.696/magpie-cli-darwin-arm64"
      sha256 "34ee29f95f434859a0c18dbc9a806b6999e902a5b8a69667108056ca7b073b34"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.696/magpie-cli-darwin-amd64"
      sha256 "82306669b7d74539737668bf4ad8665ddd67d26eedbdd00b5ef862aac6012c19"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.696/magpie-cli-linux-arm64"
      sha256 "c0467d0e63661d12dfa85eb9c951b217ef8310d312d8884040d6f5fec21f8c3f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.696/magpie-cli-linux-amd64"
      sha256 "2a20c1d7dba5bd0ddefef666da4cc8345a0d148c794136786d1b936e295fc8f8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
