class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.658/magpie-cli-darwin-arm64"
      sha256 "03a73b682c867842fa187b567b9d8e33c2a2d8ba9615b307a6544d67ec612c78"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.658/magpie-cli-darwin-amd64"
      sha256 "fff8f916d2cb4d7e539203b83c6a0001cde1c0c906bf7ddfc1b5b8be9118eb87"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.658/magpie-cli-linux-arm64"
      sha256 "1e8b116d32fb2263db2cb60261fe5d0deed4a1a22ba96f55b2573b0ead52bec3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.658/magpie-cli-linux-amd64"
      sha256 "20fb3a52f5d0c152448193847637b04fdaf50d45d87976afe46b72a897b2feca"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
