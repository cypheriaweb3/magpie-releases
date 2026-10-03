class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.723/magpie-cli-darwin-arm64"
      sha256 "41c65f3cac8d687dd5b04d5ae10f8a8b14a61e8bf51dff6888d1565eb3efe4d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.723/magpie-cli-darwin-amd64"
      sha256 "b9af0e6681e978f3fffc69c0b655c2faf2dc3dc58807b173d752b35e48465c52"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.723/magpie-cli-linux-arm64"
      sha256 "b891d18035917c3c4dc99ba9229ef3a2930a42fdfe0b777222fde6468c795f66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.723/magpie-cli-linux-amd64"
      sha256 "2dc7d43c4fe7791c0219193cf73fbafd5edefb965bd6ce1bfd95d8a979a873a3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
