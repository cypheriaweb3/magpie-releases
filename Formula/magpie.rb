class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.200/magpie-cli-darwin-arm64"
      sha256 "6a94261c5103dcf29a7b527ff19ee4acd51b843c4f0f3d9db66f634436205f0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.200/magpie-cli-darwin-amd64"
      sha256 "78aa30ce0435bc36a92552de9922f4eaa8390c05ffdf5a14ad74afff46b6e0af"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.200/magpie-cli-linux-arm64"
      sha256 "b3dfb90342c5df3ba5ee3f31ad7303082f827de1821a37b15772c6f29bab3f77"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.200/magpie-cli-linux-amd64"
      sha256 "0961bd935c66de545cb1dc7eb3443cb11e4f18c867bb042ef24d61847ab833f8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
