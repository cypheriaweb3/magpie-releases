class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.352/magpie-cli-darwin-arm64"
      sha256 "f168987b460e27fd2ed30a60bb201ac9dc3d8a6193ad95743792ca6181bc10cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.352/magpie-cli-darwin-amd64"
      sha256 "c51491e663eea6f71094cb3e0a04d4e8e943ae803a7a8458f91d5583fc0adfcf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.352/magpie-cli-linux-arm64"
      sha256 "24521d9c5c0ca3497e67bed6ba849bf4392ed8526a3f3f3673c839367d02719a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.352/magpie-cli-linux-amd64"
      sha256 "75f0771aa89a87137733962f21c4fd54393204a4a93bd61bb555727b06e3ddcd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
