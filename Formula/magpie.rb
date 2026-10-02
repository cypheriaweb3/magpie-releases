class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.629/magpie-cli-darwin-arm64"
      sha256 "77daaab7a641f21c0d9c8f95df7a5997e1713c4be81950d6b31ee4c00e38fdb8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.629/magpie-cli-darwin-amd64"
      sha256 "a28e71d321bb5b7cf266120ab0cf05044ce6400b82d4512ab9309a9f03a5a326"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.629/magpie-cli-linux-arm64"
      sha256 "a10a9826305df748a3bbd4134de6a02bd260fdca9c67ef43a21367da3a8e326e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.629/magpie-cli-linux-amd64"
      sha256 "40c5c6308e9c17c7823d983e09480ba2d8ef365665e3f0f768c99bdebdc619fc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
