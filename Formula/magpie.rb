class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.369/magpie-cli-darwin-arm64"
      sha256 "4833745cbbcde53a500e4aa190f9e32e696e1b317246bf21107418ec66b148ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.369/magpie-cli-darwin-amd64"
      sha256 "86fe552a48b3aaf899af83f64ee7e097738cb8793e9e6462ea3d6cef0ef70233"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.369/magpie-cli-linux-arm64"
      sha256 "86738c1379988a887739bc6b0cc473eeed51fd6d7a18cecde057f061e02a08e7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.369/magpie-cli-linux-amd64"
      sha256 "c46b2b66290d637cd14a91430eb1e71ad4be8ae4d0b0a93aabc3099e5b0590f1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
