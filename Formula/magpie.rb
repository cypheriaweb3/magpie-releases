class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.336/magpie-cli-darwin-arm64"
      sha256 "d54a1f6bb7265b5f33511d75794c6bc4fc57e59f57594bfbd09dac126743d68e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.336/magpie-cli-darwin-amd64"
      sha256 "122500f6442ba8e4ffafe32fdda05a2436afba1ef27766ca600583b17df6bf19"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.336/magpie-cli-linux-arm64"
      sha256 "7300fcdd0e30f185de79bf6556df0f64d43507a003271e544ea89a53be008eb5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.336/magpie-cli-linux-amd64"
      sha256 "87ec03804e667dfc8b9e42d2721cb7793b07c21be95d70d6dd8353d67814ee1b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
