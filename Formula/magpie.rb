class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.507/magpie-cli-darwin-arm64"
      sha256 "246b17d20c4704ddf6f996a017cb7906c62c5ae8f155b627943965abf8b1d014"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.507/magpie-cli-darwin-amd64"
      sha256 "821bbb79f67d9d0fff38f3ed7101365b3c46cfcceb9e24f94b3d2196ac2fbf40"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.507/magpie-cli-linux-arm64"
      sha256 "0c14f12802409854dde17f6df7869ec0feb2207f7ec51c0f92f85945e004b4ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.507/magpie-cli-linux-amd64"
      sha256 "0a46d36a665a7c286796915dd1fafd45cb8e6d402c2da20424f8e4a45d3f491d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
