class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.380/magpie-cli-darwin-arm64"
      sha256 "4db1c5523aadbd96bea1b45c3c3e56031598eed012003caddeebaa73937520a9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.380/magpie-cli-darwin-amd64"
      sha256 "5592fcfcbbdd88cb8ee4b283df7eabd5728f157020ec0760360eb69a5bdf0618"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.380/magpie-cli-linux-arm64"
      sha256 "e0e40d9ea7c3cfaf43327b66de998d0fa41d17be0afa4e73bf39961c11319e94"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.380/magpie-cli-linux-amd64"
      sha256 "ea7762ee5ef4f51c0e94c2b5a395cb515893ea4f8d7e72692c41256f661b37d7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
