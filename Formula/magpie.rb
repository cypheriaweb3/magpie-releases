class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.236/magpie-cli-darwin-arm64"
      sha256 "365e7055a89e4033f4c941425d2c19f7b74e8f1122ac0f2d2e72ae4ad48116b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.236/magpie-cli-darwin-amd64"
      sha256 "f8d71195aad0358fadacd390fc166018aca9bd1da70a70065f335807777c4f84"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.236/magpie-cli-linux-arm64"
      sha256 "a485cd064cbd0c88e905f2eb0e3fcef56793501788b7e12c8b9835acc7f2f344"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.236/magpie-cli-linux-amd64"
      sha256 "0e90bb9b1073bc75d5eabe775e55fa83dc0441356f8701b49dbe20a6bfed4a59"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
