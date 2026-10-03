class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.708/magpie-cli-darwin-arm64"
      sha256 "1e4f76024dfbb1e985f61176b0e168a1e90fb63ae6c9423a65019d8d080a5abf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.708/magpie-cli-darwin-amd64"
      sha256 "73cef58c1d15988131f0de5a40c5e90ebe94a89197a772a85932056d5320d417"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.708/magpie-cli-linux-arm64"
      sha256 "0d2de793f401602f007b3de35a346f240d68650a9412118941626a9cdc4ace3c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.708/magpie-cli-linux-amd64"
      sha256 "7a15600c387740d814a3b89c109db859a492277dca72bdf625a3a2cd6cf87b91"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
