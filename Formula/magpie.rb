class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.763/magpie-cli-darwin-arm64"
      sha256 "7fff7e132f88c4092ee55387e120ad15f904dd18753f41e46327209610fcfd09"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.763/magpie-cli-darwin-amd64"
      sha256 "0e37eef3e1d6680537bd2c449c93fd2c1e59e9c2a3aea2a5931777333d959406"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.763/magpie-cli-linux-arm64"
      sha256 "a3ebe8687cb53a47f124b294b87f67a8e2ab2a2e11bb53242aa7238b91575aa3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.763/magpie-cli-linux-amd64"
      sha256 "d9243b9ccc059543e39d2ede35429991d7e1b0e66ddee1c920bb17a27fdfe66c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
