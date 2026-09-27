class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.174/magpie-cli-darwin-arm64"
      sha256 "25c8b8b35beeb375990616f1fbf191e545c7b00bfdebf89165bdecf725af61cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.174/magpie-cli-darwin-amd64"
      sha256 "65b22f3ed91e459dd06f80f36a524e0a6babc34cdd7c73bb79ab170dc748241b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.174/magpie-cli-linux-arm64"
      sha256 "fb8cc0a3f5a9fabeb3f704c329800df077b69b178b2c2b3ed4dad53ee2dc67c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.174/magpie-cli-linux-amd64"
      sha256 "9f5e5c163346aad3a07d6cad77aff50e7b63c240d3897902b83482014c9970d3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
