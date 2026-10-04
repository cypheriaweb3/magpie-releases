class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.873/magpie-cli-darwin-arm64"
      sha256 "3ccd5749835d8e463eb55b7bf9d3892fb2c8b49360790f1f90177e9d2880a481"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.873/magpie-cli-darwin-amd64"
      sha256 "96c5a8f4633629a641de5f043c18733f4a5c0f53bf29fd7b75fbcf8b738fa93f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.873/magpie-cli-linux-arm64"
      sha256 "b848d06951d359204dd9abd4baffd166d1eeafcef8363a4adc52b6fc19a295e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.873/magpie-cli-linux-amd64"
      sha256 "0ab210d78475283bbdc3c506c7539d9a0c598a688901fad3df093ca92303b672"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
