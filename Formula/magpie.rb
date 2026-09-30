class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.532/magpie-cli-darwin-arm64"
      sha256 "36f165a03b80feea695e6fea91423b42fc555b508c82d4fe32a47a369e7fd425"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.532/magpie-cli-darwin-amd64"
      sha256 "d42145aad54cb678461c7607b466e8608f91efd5e316802c33898cc332daa5db"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.532/magpie-cli-linux-arm64"
      sha256 "efd647202b90a02475d2869814bfe18f21978962e149485d2492a56b63ef9c64"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.532/magpie-cli-linux-amd64"
      sha256 "7b8b3a70cef0c47b3a6170517103624330228ed67cc321129c2a124b556b71a8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
