class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.632/magpie-cli-darwin-arm64"
      sha256 "e130be848d357bfaef7190412fd19210d84ed96318f3c0ceba7c277e769997c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.632/magpie-cli-darwin-amd64"
      sha256 "65bc1cb1472a0ff472163310c114d6db10bc6d2bca11fd44fb12cbdfc8d5975e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.632/magpie-cli-linux-arm64"
      sha256 "b10142350f149d8d4371f8a5db9111a6e32646f1bd98d1985ced3c6519432047"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.632/magpie-cli-linux-amd64"
      sha256 "20ce12386476d2223253d54b89c5c3237c1e8e04a6523f2a018692da1961989c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
