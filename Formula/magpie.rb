class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.283/magpie-cli-darwin-arm64"
      sha256 "0fdc459907d48ee278209b2f0693d40eb680c45690e551632050b447654bc837"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.283/magpie-cli-darwin-amd64"
      sha256 "d197e9e264c5b22561d6aa965120cee00f4ed32dd6acdda52c9270c34dd8b762"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.283/magpie-cli-linux-arm64"
      sha256 "d6bd84ecc5cb9e6dec90cc7555271a7d961ed668fe8992acdcccb857f6c52b92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.283/magpie-cli-linux-amd64"
      sha256 "d935eb8f23ff7b6e390211b2d931f363b6493360093c36a492bfbcd0fa433e02"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
