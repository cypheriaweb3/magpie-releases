class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.488/magpie-cli-darwin-arm64"
      sha256 "5608ebf8144a11998670499356531424233247d6a108bfb24c80c22a637aaac3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.488/magpie-cli-darwin-amd64"
      sha256 "7c68d77e6ac76064508406914f440f926afc7134e3cad889a37b82fc744f234e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.488/magpie-cli-linux-arm64"
      sha256 "5fdc1c92fbf4349171b801c3f25bb683166373479d9e003dd72ba12f6d01d10c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.488/magpie-cli-linux-amd64"
      sha256 "4f9302edf4051e0a7f36f45277d0d01aeda8ce8bb9c59ef6441f860db4bd4d96"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
