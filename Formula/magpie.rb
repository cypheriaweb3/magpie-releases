class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.792/magpie-cli-darwin-arm64"
      sha256 "1efa6522376c4dc23581019a74bf48d2aa9dbbcced77d3d1724c8137c8896412"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.792/magpie-cli-darwin-amd64"
      sha256 "9b4fca924fa62c7ef7d44b74d34188b92af8a9da87a88530020725fb82cb43a3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.792/magpie-cli-linux-arm64"
      sha256 "0607aa234b70bd827fa799e2956c59ab6e8d713e18b0e291445bf9d7004cb4ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.792/magpie-cli-linux-amd64"
      sha256 "97739344955e76b91dfc8b497e4b8d2c40f80b5f5f2bf2e2d0f217752a466aac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
