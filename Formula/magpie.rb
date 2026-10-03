class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.796/magpie-cli-darwin-arm64"
      sha256 "1aafb86cf495da44c5fb660d8578f58ebddfa17f252b4f1f18e7433757b3bc80"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.796/magpie-cli-darwin-amd64"
      sha256 "48615d78b62cadb5065c172568df1a707e324f3c416b30c9410d6e191b66e401"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.796/magpie-cli-linux-arm64"
      sha256 "8232c0dee8a00d653f412f22bc1cf7e20c5c75be96ff39c2a2ebca1e9aa55ab7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.796/magpie-cli-linux-amd64"
      sha256 "d1422ef6686edb4ac475191052bbb176bc59602bd529b4058eef5dae93f49697"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
