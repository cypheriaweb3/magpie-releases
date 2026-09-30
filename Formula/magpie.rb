class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.541/magpie-cli-darwin-arm64"
      sha256 "670ecdfd98cf9ca457657f24704c26da067b8ea7acee178d29135bbe1dbd86b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.541/magpie-cli-darwin-amd64"
      sha256 "0864c9e53735dcdf2c56ad87812fddb3983a2464b6f35bb31659c00c8d063942"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.541/magpie-cli-linux-arm64"
      sha256 "d616199308e83f1434a8d23662339ad4b3731777b66d49bfcb0382631be8ea8f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.541/magpie-cli-linux-amd64"
      sha256 "b35fb36776ca48d30f0d831805823395473cd85651703839ae6052328da0d087"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
