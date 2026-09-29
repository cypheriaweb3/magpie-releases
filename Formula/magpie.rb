class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.372/magpie-cli-darwin-arm64"
      sha256 "92385b62dc287e7d5ef9e31b170e42ac6771c2c2c0ab373a1341fe6773814bfd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.372/magpie-cli-darwin-amd64"
      sha256 "89ed1e658d7bf600c5153e3e18d44081e8f5d789a998ebcfcac12b2c224252b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.372/magpie-cli-linux-arm64"
      sha256 "7652c4b21f96742c593fab4ef376b6a6bdef942774d35c38ae6473edbaaf7f79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.372/magpie-cli-linux-amd64"
      sha256 "7daa8dbadcefe1c3cc2b03227e17c4a09620f1e1d9d952b11a36f6e523e81b04"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
