class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.487/magpie-cli-darwin-arm64"
      sha256 "0aecc1473677ac6a9ffc7029f871c9a848ee45553ef33e446baef00580ea5c7a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.487/magpie-cli-darwin-amd64"
      sha256 "843d8c385c165afdc8d26f8f5e586eb84fb4d7a084dd65915a9cab4234e67b26"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.487/magpie-cli-linux-arm64"
      sha256 "270f55fe73c33a7ca4f170537fdf9afecb8bbadc98dbf26d1913c600eb674796"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.487/magpie-cli-linux-amd64"
      sha256 "6aa19903a3ea2bc740777fb3515f36a7673b8daffe472270740ec338e02bba19"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
