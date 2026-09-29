class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.377/magpie-cli-darwin-arm64"
      sha256 "9835925b270c16d0c35cae0afde8fcf97cede319e68de9ebe62d119064e1e818"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.377/magpie-cli-darwin-amd64"
      sha256 "7148551b880d4c4a2a513a34147ba41f87641100c452bb09d4d209965e59becb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.377/magpie-cli-linux-arm64"
      sha256 "5f6c335dc4481ce2f5e035fb3b846b5c9ee0a5d69a50803b700022a1eae4d694"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.377/magpie-cli-linux-amd64"
      sha256 "5f41a338f98485fab4d1abe7578601dedbdc1289656f453f308cbf743b5f176b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
