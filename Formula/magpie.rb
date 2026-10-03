class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.785/magpie-cli-darwin-arm64"
      sha256 "9a6710cf023310efb0de78c42dc7c243a6474c38b179602a21485db7cf1e90a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.785/magpie-cli-darwin-amd64"
      sha256 "9116f05a1bf98adc2221e06480796f29699c56ac48a1d2bb10efb32c9b6e426a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.785/magpie-cli-linux-arm64"
      sha256 "5500c72125272abecf740a063ad48c8d852122b676d5eeeab276fd23574321a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.785/magpie-cli-linux-amd64"
      sha256 "74e846666cec14ee98376b9ce97a04a3e6acc108c382f921505afed8432c443a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
