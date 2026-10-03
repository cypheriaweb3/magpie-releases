class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.732/magpie-cli-darwin-arm64"
      sha256 "e62a5fe1fd6d9e856b263246e2875b3b9235df3e1ba7b2bda9f7554521cc8db4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.732/magpie-cli-darwin-amd64"
      sha256 "4f6327e920e0c6e3cc906402e3cb38c4af5e3ed4bb83b9b9d571192c71aaa05b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.732/magpie-cli-linux-arm64"
      sha256 "f894f3369f6dbc0959ff13dd7159221e4cf313ccee626241330d22f1034e5ecf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.732/magpie-cli-linux-amd64"
      sha256 "7f42bc93152a2988e0dcca1fee358f1e0107e057c054c68872ffd1111348a1b1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
