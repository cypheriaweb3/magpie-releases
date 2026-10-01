class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.551/magpie-cli-darwin-arm64"
      sha256 "c0a2eac7a4df06a61cdc0de373c079dd42a35fbd91c8974b576812c4d75f0e49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.551/magpie-cli-darwin-amd64"
      sha256 "3a1aafc6a5e0321b55d357af4960c0c855e8338b6b3b10db90b9c899e998adee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.551/magpie-cli-linux-arm64"
      sha256 "ab98c0042ad386fab180fdfdf9f7eb6756d0e44df48501c340014b7522beae23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.551/magpie-cli-linux-amd64"
      sha256 "9344dba8231b4878504860b1c5e394b22de72a27b83cce2fe86f9a2f48b08dd1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
