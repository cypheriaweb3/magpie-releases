class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.345/magpie-cli-darwin-arm64"
      sha256 "1d58e0923c6640e2f3a6236af206434a79cda6b50f22ac17fe8c90efd43b1cac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.345/magpie-cli-darwin-amd64"
      sha256 "575782dd9751b65311983a0d3249d1c344b83f3ad7574f73311bce037c253c0f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.345/magpie-cli-linux-arm64"
      sha256 "f173da8815c5e90ed4e6b39db1108d031d872a76f611c91b014de0ec8d2ec28e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.345/magpie-cli-linux-amd64"
      sha256 "954b78435aaaabfdee74242359fab3355ddade29a245fbeb4b6b1ea9f6ebaf13"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
