class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.590/magpie-cli-darwin-arm64"
      sha256 "1460787eefb62f07cc24f56a49097dfe00239c1b97a9c61fb38ff0b21277d0ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.590/magpie-cli-darwin-amd64"
      sha256 "1c4e9d5c6bdd11c59b4e6ce78a8fb4f5344fc6a526b144fa20259eaca56f8d0e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.590/magpie-cli-linux-arm64"
      sha256 "536b26fce7764bf413facf3ae1bf32c38be28f904edc86e9d1e5e4f7bca7ed97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.590/magpie-cli-linux-amd64"
      sha256 "8e6fa40ce1d49c98e7eef525a3affad2dc0510867d125755fa08ef89097ed8e6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
