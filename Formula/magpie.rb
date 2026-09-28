class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.331/magpie-cli-darwin-arm64"
      sha256 "57fd664767db16266a1acc7371a3869a0032f161374af724bc7428eacfb4ca53"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.331/magpie-cli-darwin-amd64"
      sha256 "61f4784b8e525b2d196b71eb63c67b81262081a55a47b90641168820d4543d54"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.331/magpie-cli-linux-arm64"
      sha256 "ae6dfc3161d0192e03934470634053cff63d481043bf9eaaa0d9710dc0503fa2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.331/magpie-cli-linux-amd64"
      sha256 "0ec26b98aa34871c666e1c2ab49b56fd7c057c1c8a4bfe10b24bdbcdbb64a628"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
