class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.218/magpie-cli-darwin-arm64"
      sha256 "b8ffbbbbb26721713b33f59a5c81f02aae3837fe774cd4e590fbfe37f0614e31"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.218/magpie-cli-darwin-amd64"
      sha256 "f88de323e9bd0e4d5bdfbcf71df5e74b82d42abcbd210285e5c27d88199c0ab4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.218/magpie-cli-linux-arm64"
      sha256 "14afdf60087294d794358fee6ab9c663c8d3a276322492e235187a6b844e6c1f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.218/magpie-cli-linux-amd64"
      sha256 "67dd670c2233048dd764353073bad3a2e3c4489c3ea75fa08df2070772abc726"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
