class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.323/magpie-cli-darwin-arm64"
      sha256 "e35c4d0beae131f9af3a002f2ede30370fb2eacc06883325ae57117e008e420f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.323/magpie-cli-darwin-amd64"
      sha256 "1fb72223dfc2e49e0204e4c6f9c9c83ec80114b972242116dc70c309e0d6ab5b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.323/magpie-cli-linux-arm64"
      sha256 "37ab34abc23d65ac0115f10dc21f8ea23d4827367310bbc52a341a4d4c1e731e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.323/magpie-cli-linux-amd64"
      sha256 "7be95624c5ac8a5b3cca8b3e76ad201af5ddaf3c8b3cfc17aaa03cfce811ff17"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
