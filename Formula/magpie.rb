class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.247/magpie-cli-darwin-arm64"
      sha256 "526f0b3870e175c99912b2a3df7993887e9df4048150581cdc9fe7b31568f1a9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.247/magpie-cli-darwin-amd64"
      sha256 "eb0028cac06814820ad6b3cc3721192221ba4b5b1b3af66b1298bbf0a1983850"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.247/magpie-cli-linux-arm64"
      sha256 "ace32fff5ca5b54628fb557a3c6971d64de6c1dad5c6285f73ab9831f7645731"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.247/magpie-cli-linux-amd64"
      sha256 "1145b88701c9c821927af3c1d7168579913732c9b28cd56de6488e28a77eada6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
