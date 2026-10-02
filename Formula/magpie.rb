class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.675/magpie-cli-darwin-arm64"
      sha256 "b06b86c40f2677b7bc8c959de6b70ee3e2ddd151c78cc1b3212b3b13f67010ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.675/magpie-cli-darwin-amd64"
      sha256 "9a5d84fd3b2428369de1da9b495fe37465489fe2b88b27c9317496e57918fe29"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.675/magpie-cli-linux-arm64"
      sha256 "3b5f58ca7678c1935671f5ad80317d42cbc057ac185d0d486a7a1e64ff2b5ca2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.675/magpie-cli-linux-amd64"
      sha256 "d65b6579950de214c86ee0052b273faf6304fff68a82060de4d10340a12f523f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
