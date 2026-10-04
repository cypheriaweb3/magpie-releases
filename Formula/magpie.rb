class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.806/magpie-cli-darwin-arm64"
      sha256 "bcd942f3ad1260efbc0adcfe90d55bac612490eec17b2d37080e7b378fe68a20"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.806/magpie-cli-darwin-amd64"
      sha256 "ff46b1293b507fb302f056ddf53df80c492012a8396b7d4ac79d295a3e500da1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.806/magpie-cli-linux-arm64"
      sha256 "4e7f8c7b25e4befc73d64551a705daa5941384351ed4299a8875b9d6983f3564"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.806/magpie-cli-linux-amd64"
      sha256 "3ddcf8d26cb28b01f387c1cb44b0d6688f3d5b7f9f558e4c0d1ffd94f2595be5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
