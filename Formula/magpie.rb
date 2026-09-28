class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.270/magpie-cli-darwin-arm64"
      sha256 "b17436694cca344d822823dcfdcd1c6b15af1ecc461747a3161299e033c34336"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.270/magpie-cli-darwin-amd64"
      sha256 "e50d1a9a709b94c53449fa64bd91eb028e42df504410419e503eb082500ed8ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.270/magpie-cli-linux-arm64"
      sha256 "74026199a41bac19f7fe411092b53bea7d4729b12488d7969a702084daa640e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.270/magpie-cli-linux-amd64"
      sha256 "19efeafa2dc3b3d8b001b1698745b38242a40cb940a2e9e996d9c9f20045c920"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
