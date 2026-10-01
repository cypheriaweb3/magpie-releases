class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.599/magpie-cli-darwin-arm64"
      sha256 "905a13e20c2b83181b28fb83d86c877661f19f1c5bf25df7f20cd49cd9e5c14f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.599/magpie-cli-darwin-amd64"
      sha256 "90a5bc9cd7892dfa99d601f8ad6efba78773f92c7154f173d5a307a72e3b44da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.599/magpie-cli-linux-arm64"
      sha256 "72786c1c76e495a70acb6b2d1cf5bd6d2b8170a55d8ea64d6ddbda481ab854c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.599/magpie-cli-linux-amd64"
      sha256 "c16792c1eff26adb50efaf48ed5676cd23195bbbd1eac2aeb44bb97a0787e481"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
