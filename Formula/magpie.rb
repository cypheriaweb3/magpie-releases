class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.324/magpie-cli-darwin-arm64"
      sha256 "d557f41bdd5f76f84cff39f58a9a3eb9ccc1ae2c7a5a8c1722c86867b4b8ee46"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.324/magpie-cli-darwin-amd64"
      sha256 "bffc216e53be8536b1c14f4ae535978b4c8b7ad179838f1e5a71af4529361447"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.324/magpie-cli-linux-arm64"
      sha256 "0aabe9995388ae901b48c95f45419ee84a1d6ea854ca3f13953ffe3ac1bf909c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.324/magpie-cli-linux-amd64"
      sha256 "b8ee9ca46868f00ebf28ccf3b49f99a3fa649551400c612973602a9b012a3ac8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
