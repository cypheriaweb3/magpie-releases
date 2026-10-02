class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.678/magpie-cli-darwin-arm64"
      sha256 "a55c1edaa7fe595a720fe3cbde9bd7d51921c139c210602ff05a672a4a27a1a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.678/magpie-cli-darwin-amd64"
      sha256 "05afd6cc988bffeb84ca7a82c7ef67d94edea05eb0d47c34825ed5c01a427210"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.678/magpie-cli-linux-arm64"
      sha256 "b077b8c140d338d11f53fef626b8dc8467dfd3814fad223c5de412e8e7d5d7c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.678/magpie-cli-linux-amd64"
      sha256 "546c04bfb4b82230a5d689ff4ebf61b334b2c770aa4ad065399b43deb1e201cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
