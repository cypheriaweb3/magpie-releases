class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.195/magpie-cli-darwin-arm64"
      sha256 "7d3bf1856f751c9ac44ac2f4b97a7f41f7aa053f60c05c99f5f9b54a0765e38f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.195/magpie-cli-darwin-amd64"
      sha256 "782a2c1c98e67666653855d60287f0ddcccaee36ce865c240f1d4675186ca10d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.195/magpie-cli-linux-arm64"
      sha256 "c82cf53fc3d18c1f215c66c3fe2877ddbff0a9bcbecb751d710825491f17a41b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.195/magpie-cli-linux-amd64"
      sha256 "d52275520e5f978495b1e5d4231e134449704d7f380354515ec0ab66b2c3edc6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
