class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.717/magpie-cli-darwin-arm64"
      sha256 "3eaf4aa31d68f67825aaf0df6ca554183a84c30e61932ec1bef7e2e7e371d1d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.717/magpie-cli-darwin-amd64"
      sha256 "ce5ffccdd87366d72683e01a9827401a4724d0ca519f765b8acb065787205211"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.717/magpie-cli-linux-arm64"
      sha256 "990da97b1f8bb60161590d5bed7bf07df9b5b714d46d9d16897664e87d18dbb3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.717/magpie-cli-linux-amd64"
      sha256 "a310607ae35260527fac21b398caf88aaaa5b229395f2a57386443b93864d216"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
