class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.574/magpie-cli-darwin-arm64"
      sha256 "8b720575f6bec86f3d1499d7eeb199db75f6586123863ea8c7863f819e669c87"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.574/magpie-cli-darwin-amd64"
      sha256 "91eaad50dd3e4bb4ce1551e2d61757153ca0166741e4494a4fd08a4075b07889"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.574/magpie-cli-linux-arm64"
      sha256 "59cdd231d2885f022607ffe3522975ebcd1467025f2572f68b174d790975a4a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.574/magpie-cli-linux-amd64"
      sha256 "fe09adb6553acef2cbcd6e900c7bc0089ff7359e2bb6271e5266cddf4fc24d88"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
