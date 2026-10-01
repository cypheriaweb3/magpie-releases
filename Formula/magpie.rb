class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.561/magpie-cli-darwin-arm64"
      sha256 "53bed4283a7b38f7a3caa1e53479bb9dd1d46ebbb448b36fd4e20dc4da113e56"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.561/magpie-cli-darwin-amd64"
      sha256 "72c674f4ae575fb6b5d5c8dfb05f486eebc55bdb4de80d3ebb326599bca159c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.561/magpie-cli-linux-arm64"
      sha256 "5ef2af233180483d8e2d34471eef92b602a2965972fba6c432a6f6d1d1c713e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.561/magpie-cli-linux-amd64"
      sha256 "224e45397ddbe61584117f26629e96d9a2332fd85a9380ac3749b23265dabd01"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
