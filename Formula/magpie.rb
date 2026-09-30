class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.475/magpie-cli-darwin-arm64"
      sha256 "5194af2f410b4bec59efbf51643ec18047d909d4e643f1b50fa6676aecde4d9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.475/magpie-cli-darwin-amd64"
      sha256 "54136876f97a88bb6c487da41f1327b672556c0e0a3f2256f598d4b0d337b00a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.475/magpie-cli-linux-arm64"
      sha256 "17d241ed6c849d541072536a20c1da2e68b17fea741e8614c67871fc14c0a2c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.475/magpie-cli-linux-amd64"
      sha256 "d4002b1dbbe9e410679d6d2d3e81a234bbf4d8ef4433a690a26f8e7d0208bab7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
