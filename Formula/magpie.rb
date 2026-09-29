class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.430/magpie-cli-darwin-arm64"
      sha256 "746202ca1b2d85544e37a85b1047f7980deb2754138fe1da11c1bdead3c5465c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.430/magpie-cli-darwin-amd64"
      sha256 "dbfd5ed99b885d9dbeba0fa4a769a48e9792ec6555eff41347510175aceb9522"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.430/magpie-cli-linux-arm64"
      sha256 "a294a0f0d570fedc91791554fe5298573da554f2953e2e319f2e3392ee093c88"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.430/magpie-cli-linux-amd64"
      sha256 "7dcaccbaa49e0e1dbf6191fff65ddd70f1afab760e81a40634c69d062aa22739"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
