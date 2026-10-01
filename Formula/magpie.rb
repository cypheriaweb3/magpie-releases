class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.554/magpie-cli-darwin-arm64"
      sha256 "6064158d166dfe4ccfa110bdd80c608be49282e7be8a4583b29f67f25e8a7d5e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.554/magpie-cli-darwin-amd64"
      sha256 "87a551e12fa7c631fd4be8817cad6c5f468555645b12d8523e3c6625f9f863e7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.554/magpie-cli-linux-arm64"
      sha256 "db7a94e97a9e904787526b5ffbcab470c2f289821001102a60947bd571728f9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.554/magpie-cli-linux-amd64"
      sha256 "4882d8b0a9c7a39cf331fd77a5b419e38af7dba242c19cd81d62252d69abbdb9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
