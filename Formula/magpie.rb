class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.568/magpie-cli-darwin-arm64"
      sha256 "4459ea6d0c73094b460c37288b533981b8ba34e44d224483499c337b10182065"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.568/magpie-cli-darwin-amd64"
      sha256 "8dd8d400962c0030e8530dd75df27080ebab8817b782dc1d1ed22a34d8664cc8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.568/magpie-cli-linux-arm64"
      sha256 "78681b572d0b2855bd0ea08b9c445ec35d6d670b7696d1710535c04d317cae39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.568/magpie-cli-linux-amd64"
      sha256 "067fa5eb9b60d29551188699176bc39e2517ebfcb9b4944a40537b8ee6290924"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
