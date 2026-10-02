class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.653/magpie-cli-darwin-arm64"
      sha256 "8dc860e2cd5449127b93e9a155883e9990429394ff886c6964586471aa227b97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.653/magpie-cli-darwin-amd64"
      sha256 "240de59737f3126c6cf0ed7d7ed1c9a5579404c665e9d0cae924e8ae3fbcd2bd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.653/magpie-cli-linux-arm64"
      sha256 "2956e50a8d682a24fb76728ec85f1ab4c0c91cad8f6882ddf4b126270c10d8ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.653/magpie-cli-linux-amd64"
      sha256 "37774b5fccc9c86abb1da75f4ce5584ed0fc9aea300936c3cc1d8799e3b8b318"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
