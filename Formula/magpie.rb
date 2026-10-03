class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.789/magpie-cli-darwin-arm64"
      sha256 "068b7f3c24c0408fe55af3513964e7beff3ac7b713d0083f45c667d855ee2572"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.789/magpie-cli-darwin-amd64"
      sha256 "435dfcb0563672b4be2c5b4defb7cd9bd29b926ac80d08d38a5f96ad4d53a3d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.789/magpie-cli-linux-arm64"
      sha256 "15a2b6f1445c8dc66e649d254b46b1f893b948460bf49c86c84b682b0c8fdf59"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.789/magpie-cli-linux-amd64"
      sha256 "9e5ff6961d86cd39589d89a041225a75a3910e286871bbbe22fff1d63ae7ec5d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
