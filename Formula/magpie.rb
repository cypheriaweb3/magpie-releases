class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.578/magpie-cli-darwin-arm64"
      sha256 "daf543e9d94cb7dbc5e2859fa2ee495d00a599d70809e36f98d2fdd56360e808"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.578/magpie-cli-darwin-amd64"
      sha256 "00cbf2378b4a880524fef59ad3749202b71dc012b9a8a3420627072627986366"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.578/magpie-cli-linux-arm64"
      sha256 "486e534627785ec8573e5b87b410bf06cc37e3809eeb0f329999f611f995542a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.578/magpie-cli-linux-amd64"
      sha256 "d02e72544985fe308105d88ec4911e300d66dba337eea86d0ac0bbd18b4a08c1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
