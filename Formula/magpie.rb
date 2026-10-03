class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.699/magpie-cli-darwin-arm64"
      sha256 "3e92d7c3e10c9cd2c86a0c83eaa02971fc533a2afdf38b5f63041b2f81408192"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.699/magpie-cli-darwin-amd64"
      sha256 "7dcb4acb16b1b77af0c4ab1c087cb864008ac9102a9b46d27c999032448bf93d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.699/magpie-cli-linux-arm64"
      sha256 "7cf67037cdf54cae6b545f112ff2f66b90672ea7d3c2af43b1d7484eab38e103"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.699/magpie-cli-linux-amd64"
      sha256 "428328d96c9721224f5ee95e91b93c065b5192bda9a38ae54ac7ba6073c893d3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
