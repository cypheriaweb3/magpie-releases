class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.481/magpie-cli-darwin-arm64"
      sha256 "d4105c1c36056e0195cb4a5809ec04c6991885308867750b9ba1b8915ee0afba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.481/magpie-cli-darwin-amd64"
      sha256 "e2e98553b3206a058f4214a9a6d4b7360463186b0dcbfc17d2bb896dce6e2c1b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.481/magpie-cli-linux-arm64"
      sha256 "a7f8b1723ca394253fc73d04944685eb33570b971c3d0f1cf4bbeace2421475f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.481/magpie-cli-linux-amd64"
      sha256 "bb78c2b4e719456879564739da2f3df863d7bb3a2743de26bd0f2e028e38472a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
