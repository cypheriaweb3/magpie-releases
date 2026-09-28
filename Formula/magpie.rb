class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.329/magpie-cli-darwin-arm64"
      sha256 "b8ab4f3e4138de9182693488b4af3fdf2fca8130a5803d90979037ef5b4010e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.329/magpie-cli-darwin-amd64"
      sha256 "89c435f4b84d4d065e33079a752f14419a181cc8c471bfec5b2f7d2198267831"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.329/magpie-cli-linux-arm64"
      sha256 "e64ca512b81c993653d638f9770d890dd7a7cdf02d8992fe27a4340e56235c7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.329/magpie-cli-linux-amd64"
      sha256 "5d4e4180f5447d3e4538f1327aa6550eab9f3da90b47965a071f547a240d1e01"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
