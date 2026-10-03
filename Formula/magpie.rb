class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.773/magpie-cli-darwin-arm64"
      sha256 "02e608efbde0321a421f70a2a4cd897d6c8b0e239c239aa85dd88c5a2f289539"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.773/magpie-cli-darwin-amd64"
      sha256 "3cd0b05cd37e87c981fec7331df1d82c11fa2a66fa60ef08509633c04262d787"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.773/magpie-cli-linux-arm64"
      sha256 "babbf27061242ee9c92b676218134fefc83fa2b7ea06c6c2f9c73cb5ed7066c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.773/magpie-cli-linux-amd64"
      sha256 "ac6d1ce2e3ea1abcc37618334dd69ea055c358fd2bca3990e5551a553243bf1f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
