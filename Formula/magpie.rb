class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.354/magpie-cli-darwin-arm64"
      sha256 "eae274d81cfb5fcae822dc3017aa6da2d598f3d5e78f172aadd7fc4dfd52c7ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.354/magpie-cli-darwin-amd64"
      sha256 "1632f5b41bddc19c9bf2faa665fa766cc2f570785f903de087b6dd44c3e5b264"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.354/magpie-cli-linux-arm64"
      sha256 "989be30404e9f45c27621caed247e70f5041b125c0e446524470323dacf1f40c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.354/magpie-cli-linux-amd64"
      sha256 "57dc8b9b2a6bb621ee188738b6095268a3eb0784406a37cecf96994489a5ea1f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
