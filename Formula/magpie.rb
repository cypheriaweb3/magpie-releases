class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.254/magpie-cli-darwin-arm64"
      sha256 "9c1a3f39007bd170e19ec169eba750c5d577f82106e6d475b217d4caf3ece1c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.254/magpie-cli-darwin-amd64"
      sha256 "982a467a6359ec59d76868fb334452a3d5583f6e71b52a4b9538f206a79f870a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.254/magpie-cli-linux-arm64"
      sha256 "91f37e0ad1ba4a049a266b0db77b2a3c8a8b6406955ec7fe1ad66478b97399d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.254/magpie-cli-linux-amd64"
      sha256 "7eb517a5be81c8fd49dab005cc9aeb52681b1f3c2226cda846b8e8e631ddc0c2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
