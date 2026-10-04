class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.843/magpie-cli-darwin-arm64"
      sha256 "bbccbb6587faa72ea13cbb5980b88557b5ed5bea469698527839a073a52ea3de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.843/magpie-cli-darwin-amd64"
      sha256 "8b40b3337c5c1593d2e3bbe4c749743f30a1560fcaa04d169eb098b9dd295ce6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.843/magpie-cli-linux-arm64"
      sha256 "aae1dfd5a21244cf9ea560e9d99c992865e6f41d1db95b32169abd6712ee388f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.843/magpie-cli-linux-amd64"
      sha256 "0468d4f7e0f25bd543477dec182ae0b003cfa1239e82dbe80bf4424621c0f130"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
