class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.790/magpie-cli-darwin-arm64"
      sha256 "78090e337f47c91782dc5649b00e295b86e842975121686605b2ef4b24d2fc73"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.790/magpie-cli-darwin-amd64"
      sha256 "c335d6af2624ba876e5ca40faa45af200cf9bf761212a9a24229f417a9cfda4e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.790/magpie-cli-linux-arm64"
      sha256 "2b201e3e8a5d7f2168fda7bccf22cd8a9a976e6b951fc63c0c3a1b572d780ef6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.790/magpie-cli-linux-amd64"
      sha256 "1bb316e63bb24725a9501cec30ac91654fdee03545dae012845267b64b856bd9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
