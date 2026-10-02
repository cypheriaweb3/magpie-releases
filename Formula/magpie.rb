class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.662/magpie-cli-darwin-arm64"
      sha256 "6a90ce6b02fcef5b106d5e5f0ea7ca4a39275464f32b9804dc29110fffbfa869"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.662/magpie-cli-darwin-amd64"
      sha256 "96ffc9b562c1353709d9ca28c902a6cfa0ea1a28fcc0dc6339592ae226fc54ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.662/magpie-cli-linux-arm64"
      sha256 "eec47c901ef103f1455fc364194e0fc53680b51b9a23bd399dc6cfa5d43c36c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.662/magpie-cli-linux-amd64"
      sha256 "5141531ec88e5c1002190797f4f2a11c691777bb7661cc7eaf236c9c6b4b1026"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
