class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.719/magpie-cli-darwin-arm64"
      sha256 "7ed67f83fdbc72430338440b1065c71b87881d5399f84af0fc45f07a6c4d716e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.719/magpie-cli-darwin-amd64"
      sha256 "a11ea29f64c4fe1ef63edf3cdb8b33c7cafadc27aa843174c0b96a5813856ec4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.719/magpie-cli-linux-arm64"
      sha256 "63cafe16666c89e1847e8ab9dd9f70fb63e605f2ac2f10d297bb8d1105ab11bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.719/magpie-cli-linux-amd64"
      sha256 "c1b0f5a74f19055f0aef66548091b1b761a741b393bb729072b68dbe478bc63a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
