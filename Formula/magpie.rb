class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.350/magpie-cli-darwin-arm64"
      sha256 "ef5391b0ae71877cfdfc698075983de3ac6b92de96aa20946d6d82314d1d57f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.350/magpie-cli-darwin-amd64"
      sha256 "6e2b173c56f5957dab3197d1e1ce6d08ba7940b9f4076b38409438afda0ffb88"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.350/magpie-cli-linux-arm64"
      sha256 "8a59ae87ae1c2fc83f95b22922e661d6691540d50d360ce7469fc7bdd2257ca2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.350/magpie-cli-linux-amd64"
      sha256 "d10a73b7f532951b392ed3620b08ceef3ed2214f4df4facc708ee3dfcd817a23"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
