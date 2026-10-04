class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.820/magpie-cli-darwin-arm64"
      sha256 "fd3e1583939532dc7e52a1c6c39133ec32df6f49d5959ccbe109bfe00b5c1eed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.820/magpie-cli-darwin-amd64"
      sha256 "f502205ee5088197ee20b129df2f1177c0040e267b6c3e3d08408c7b3cb5d66e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.820/magpie-cli-linux-arm64"
      sha256 "35d0b4f467cc914adc4de0604f52b48dfd470212265da2d39a61e3ad72a6e744"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.820/magpie-cli-linux-amd64"
      sha256 "9d7dd7b8324215bbd954a99e543b271178417250d10510fafd7f9514a7ba6033"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
