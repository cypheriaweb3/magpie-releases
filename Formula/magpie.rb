class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.490/magpie-cli-darwin-arm64"
      sha256 "cda387e670c31c354fb79201c7406e8589c80c009486b6f68514d9473e4ddb15"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.490/magpie-cli-darwin-amd64"
      sha256 "99159030847ffa416ed0d54c1b86878d32e11af19c1bd2fe415d3453c5cf8bda"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.490/magpie-cli-linux-arm64"
      sha256 "f58aed13f721c11727002b2d15498390da926ed00c3e58ef87f18ef32f6d5190"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.490/magpie-cli-linux-amd64"
      sha256 "97f75bbf43c6e7aead42840a1225bb9c2b77253883baea7083cd579d4e00a370"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
