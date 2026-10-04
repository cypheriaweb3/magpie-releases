class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.829/magpie-cli-darwin-arm64"
      sha256 "57f485deb231bbcce9d4537a1b1f177a90aca5583b12b397c61ee9b1f6a27bac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.829/magpie-cli-darwin-amd64"
      sha256 "9218cac37be232128a4f950c72d7d5f5c8c072b21cacb3bfb5b8bba9c7f2296b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.829/magpie-cli-linux-arm64"
      sha256 "577a5b4a3577cdb0fe21b1f2ec5bd0ad50f05eff41327fe348e29f07dd2f2b8a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.829/magpie-cli-linux-amd64"
      sha256 "45afe5280a5b48aea7fe4a2e6972c1acf5ec9b0aa3b2364b52736a5c89793db0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
