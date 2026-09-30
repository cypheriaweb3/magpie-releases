class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.546/magpie-cli-darwin-arm64"
      sha256 "8cdc0b4b198aa94b854f25d59068357d7fa99e5118be565340a71c15f828f34c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.546/magpie-cli-darwin-amd64"
      sha256 "48273f78f32b92a3199c42c1b697a93f2a081ee68d46a5beeede0ef51ca679d4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.546/magpie-cli-linux-arm64"
      sha256 "1c2f681b0a776b0ae2b0bc6ab74a76f17af7445603e5c7d568f5fb612f71dc2e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.546/magpie-cli-linux-amd64"
      sha256 "e2115b91c8398261ad1eb69d42695eab225a1d13c42e7a4fc199c688baffb96a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
