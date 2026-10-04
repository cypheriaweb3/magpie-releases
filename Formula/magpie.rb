class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.810/magpie-cli-darwin-arm64"
      sha256 "e82c9c5b714b3987ba00b38042230e3c4312e78d9dfcc1629fcb2863d69f9f99"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.810/magpie-cli-darwin-amd64"
      sha256 "5f3cad05eb2716375eee00ccf894f5f0eb88689631f1095b465d712a3965c512"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.810/magpie-cli-linux-arm64"
      sha256 "d7b0bdde3abc855d073f8e0bee6100f9a9b96c445182d00564f6871caac04d4b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.810/magpie-cli-linux-amd64"
      sha256 "464bccc8c5892663fdac0866e3b4acc1142a8506339f9171d74bad96d402f04c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
