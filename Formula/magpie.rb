class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.343/magpie-cli-darwin-arm64"
      sha256 "0acfd1c25ea3fb86d26a424f27365c2f34398bb75dda174f02fc5796adeebca0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.343/magpie-cli-darwin-amd64"
      sha256 "e0b57bdc9e21875b9aebc835ff4bf4747ef2f79aaed7bd7c04ba306bc8dafeb9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.343/magpie-cli-linux-arm64"
      sha256 "42893acaeab48a4797f30a6563c0c767607d8069cfa04cad735f6f84cb8be4c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.343/magpie-cli-linux-amd64"
      sha256 "f0046bc176887140163a7d3e98e270170df36100effc30bc8f289364b5ec17fb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
