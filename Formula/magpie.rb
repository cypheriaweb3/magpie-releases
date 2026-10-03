class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.754/magpie-cli-darwin-arm64"
      sha256 "c177ec1d05853dcaa0495dc2e08f5bf9e5302d91e6c3856a3308e7817b0f2456"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.754/magpie-cli-darwin-amd64"
      sha256 "88135bd92aeab2d4b95126573b9258ce84aa82fb98d713a8133f6b1f8c36d75c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.754/magpie-cli-linux-arm64"
      sha256 "abe2564b907b9875c40e0387caddf388d2507062184b0e43983a40aa97c3bbeb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.754/magpie-cli-linux-amd64"
      sha256 "b1f569d6fe27974627da9b07561dea2214bf66014ed1cf1ceb5c9b41a10f4143"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
