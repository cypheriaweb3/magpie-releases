class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.685/magpie-cli-darwin-arm64"
      sha256 "0c7702c62a1092e23b290dc55717d439bc673ef2cf771bb7b91c1882abae03ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.685/magpie-cli-darwin-amd64"
      sha256 "5bfa9762bd0495679400fb5733f42e2dc819b6866dcf59a21309a581726d0643"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.685/magpie-cli-linux-arm64"
      sha256 "3e2e19eb13f54e14f35f41d975381f63597932d1b9d4cbd0834aa97ef852c54b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.685/magpie-cli-linux-amd64"
      sha256 "f4f9f3eb80d5c2c9d009355093e5dcc0ce1b7490fb7f28679c53de622ff0fbaa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
