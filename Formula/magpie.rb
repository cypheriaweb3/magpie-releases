class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.406/magpie-cli-darwin-arm64"
      sha256 "aa255131fd39c1f72fd6ea058701eef63b7602b00fe074c9e0f979c730db576b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.406/magpie-cli-darwin-amd64"
      sha256 "526165592cfd6561f977d5af01d78df97ca03cf313a25764b045376e50d9b347"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.406/magpie-cli-linux-arm64"
      sha256 "618ca26f440a4405c10ca96ffe7ef4538d6480e07ede4256451f99ed91e8cbad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.406/magpie-cli-linux-amd64"
      sha256 "f16fbcac0bdd822b31b0454debcaf295c70d02a10393343e8aba6e3019b6da7c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
