class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.384/magpie-cli-darwin-arm64"
      sha256 "f7b70cec68576cbe85190d08d138a6bd24e542baf97a9abb23d3221775e4a489"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.384/magpie-cli-darwin-amd64"
      sha256 "81fb32052d9b416dde60c59b7eac85ec933c5092565c50c139261a93e868d3af"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.384/magpie-cli-linux-arm64"
      sha256 "f16f62b5afa4490e05e624e5b2020867b3f85ac37964e670b86d61f19b044031"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.384/magpie-cli-linux-amd64"
      sha256 "690a5d35a35b573c32a2d81b9e44bc39e1735a87e926e7567649f256c20a6a77"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
