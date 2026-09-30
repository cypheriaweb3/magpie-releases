class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.459/magpie-cli-darwin-arm64"
      sha256 "26f104b40eaeebe7e5372f5de19492073968f655f74cbc4c1d12f1f53998a61b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.459/magpie-cli-darwin-amd64"
      sha256 "247f8f0d1b9e7956f03b01e898adc27c20c5235676c348f7a364c865fea6b4de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.459/magpie-cli-linux-arm64"
      sha256 "1ba80e2fc68e1de419d8d2cd32d788c40d37f269dfe7017a96d8e14252a9c5f0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.459/magpie-cli-linux-amd64"
      sha256 "a50853c4a8b37fd987c4da17bd5835b0885314e4deed590cb781fb90652b77f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
