class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.849/magpie-cli-darwin-arm64"
      sha256 "d9c5a4dd608db9559d51b8ade00c8be248f66aa605663426385e8c97e492376e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.849/magpie-cli-darwin-amd64"
      sha256 "0d747cd52ef035fdb899f16682bcc7f0cd1adc93bd84eee925d2e4b87afdc4bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.849/magpie-cli-linux-arm64"
      sha256 "2dad83599236f0842495e81eb2f1d8a25ecd2a4b061fa364de0c952efe55171f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.849/magpie-cli-linux-amd64"
      sha256 "95c31f455a4dc1bb32daf4d2e5b63ec43ccef50191751fe64650577520e9e0b2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
