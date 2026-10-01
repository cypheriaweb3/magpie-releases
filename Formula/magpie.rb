class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.612/magpie-cli-darwin-arm64"
      sha256 "702801340fb27606bfb0acccbb1890a7039cdcda9e32484e92a1c7960df6ee68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.612/magpie-cli-darwin-amd64"
      sha256 "bd8a01ccf97759c88d57bd9040c0b4d1dd2bff4d166b31e59929e97c179fa887"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.612/magpie-cli-linux-arm64"
      sha256 "d68354b2ccab2ed272ab5b66aa7830aa4fcf90cb74ad11642a71f57411959e82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.612/magpie-cli-linux-amd64"
      sha256 "842f388f804bf6f794571e6fed561cfcd470d7b2a32c41392a64382f05e511e6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
