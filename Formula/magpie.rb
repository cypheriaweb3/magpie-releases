class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.558/magpie-cli-darwin-arm64"
      sha256 "282b06d774ddb08bbb4d25068e08df28013d86ca453f4d6a76f552caa7208ae5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.558/magpie-cli-darwin-amd64"
      sha256 "cbbba43204cc1dec38326934671f1eb076a66367728f88a8090ea5f8a8ad82e5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.558/magpie-cli-linux-arm64"
      sha256 "6b5ddcfb8b10126d462b75c4393fa5514bb4c49856e3e5d44e9304a4aa676ba2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.558/magpie-cli-linux-amd64"
      sha256 "b536cb9ba5e417e24b2a28f107f883378a10b103c6caad808c27637b0f138b54"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
