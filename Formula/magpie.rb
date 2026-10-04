class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.858/magpie-cli-darwin-arm64"
      sha256 "9a700f7699c0680ef97ccbd10314cafde6b07e9b30f5e386c94d0a5e508a847b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.858/magpie-cli-darwin-amd64"
      sha256 "4b4f2afeb4fc93e324785d0a8a13c231dc18004568ebaaaf8882b2ae9b0bf209"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.858/magpie-cli-linux-arm64"
      sha256 "e49dbdfb0273b6d899b846f972745cf1fcba9232c0ac7b4bced8056dd28a4f26"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.858/magpie-cli-linux-amd64"
      sha256 "9f69d281053f96c018229efcd0c2ef6a90cbbc576e6d538daeccc3f8fb7efe8a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
