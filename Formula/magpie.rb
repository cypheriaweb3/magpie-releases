class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.429/magpie-cli-darwin-arm64"
      sha256 "9fc57a68e263d7ec55c7f22efd5d0bc338843f029a6e800e414c400f356ffa00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.429/magpie-cli-darwin-amd64"
      sha256 "f2c94efea827ddcf2808860a4cfe89a4e97710352043f945861777ccfdd3ce6b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.429/magpie-cli-linux-arm64"
      sha256 "2f604d28f7d96002ae9d015a0c12f16fac97cac700615ce66462cc0a698135d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.429/magpie-cli-linux-amd64"
      sha256 "c7daa2146d18b007aaef6c28302b8e0904709f8b43abe0d92c2ec67cba67ddb5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
