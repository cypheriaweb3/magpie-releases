class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.585/magpie-cli-darwin-arm64"
      sha256 "af230af74980230fe5589353a0db4bd2b2a5215b3cd369c638db8b143b2ef7ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.585/magpie-cli-darwin-amd64"
      sha256 "1f7dfc5b28a424c7e97de6fd50bd1e6ac0b7fbc764ccf3fabc9e255c864db8b0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.585/magpie-cli-linux-arm64"
      sha256 "77f1cd5dfcef5eb69e1c82bb62649221b723ea8d77c34f476c7d6cd27ab774c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.585/magpie-cli-linux-amd64"
      sha256 "2af6528c42448f5fd2fd6cddb93b651e379dd01eb5e71ebfcf52d75a498e022f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
