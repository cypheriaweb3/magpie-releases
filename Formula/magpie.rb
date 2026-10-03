class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.760/magpie-cli-darwin-arm64"
      sha256 "fcdc11256bc7d4ae180cd3e7c052393233c4187f51e47da56cc06d8ee4c973d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.760/magpie-cli-darwin-amd64"
      sha256 "3a725aa924613794ec23751d2f254433beef740cf8922315067639f43afc8a2d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.760/magpie-cli-linux-arm64"
      sha256 "9419495c29654879f6bdddac63e01fbddd488752c012d00e1279f21b93857fb9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.760/magpie-cli-linux-amd64"
      sha256 "d6ad5779e376dc9a3f8fb7b72db0775dcf056e11afabdc83da91363e1d0b03b2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
