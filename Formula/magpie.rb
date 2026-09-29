class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.358/magpie-cli-darwin-arm64"
      sha256 "bf3ac3dcffda1cc7232bd78634e1f68d4b849b587b22d1bb9a98b4bedd3c7378"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.358/magpie-cli-darwin-amd64"
      sha256 "cae228ee40f73a9db34b0f1f2dfb22f4e17f50da3a76e2ce4d6fd677541a8104"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.358/magpie-cli-linux-arm64"
      sha256 "4148411dd720423e7386924202c54a6d52a27cffb68ae62d8798434476da0f93"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.358/magpie-cli-linux-amd64"
      sha256 "94cef7f7c1060bae4041c5997d7b992a634f711a771b12ef8b470dafa6e939c5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
