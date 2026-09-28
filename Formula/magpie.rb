class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.321/magpie-cli-darwin-arm64"
      sha256 "8286cbb05eb52423788dff080bf6fc4714c35606cb67f1cb95aec860e6ecc854"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.321/magpie-cli-darwin-amd64"
      sha256 "91a58151fc66b43f05432023947cf077a75a4dd13955c8b81150cef60c290878"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.321/magpie-cli-linux-arm64"
      sha256 "083abe386afab04f87943d6cf944f771383e5c21e92df112ec97b682ce07d5a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.321/magpie-cli-linux-amd64"
      sha256 "6ef2f537345e94328269fca7406bb64eaa4a11401c4a1d22ca976ee80ad5941e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
