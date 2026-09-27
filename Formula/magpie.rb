class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.192/magpie-cli-darwin-arm64"
      sha256 "057c2dcaaf05b49e56d6711c3b043e32358990d6b2865688467abb1797f50f5a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.192/magpie-cli-darwin-amd64"
      sha256 "05342656a01b6de5fb8d3fcb364f3d09a75f40fbdda31bad289a960a06ccb7e6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.192/magpie-cli-linux-arm64"
      sha256 "f53400c8365abe05cea7a39511210702a6108bd867b6aecca668624c3610588f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.192/magpie-cli-linux-amd64"
      sha256 "048cf63def849edf0e2ffe4feb62b193b70c189609e75913b93bf37cac5fa7c8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
