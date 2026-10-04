class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.886/magpie-cli-darwin-arm64"
      sha256 "bd29a0267b21897e5592c9c41bc2dbc40259e32c9b5ea96c28e36ff278d2a608"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.886/magpie-cli-darwin-amd64"
      sha256 "091b8b3982ab5f2c77c8feaaf6544a741330a5596ed434da1f350b27d7043511"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.886/magpie-cli-linux-arm64"
      sha256 "dd02d8a7d6cd050f1e117626f86b714117b874735bd989199a185e3826882a86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.886/magpie-cli-linux-amd64"
      sha256 "6891f9ea6ea299f9bed0adb7ce00bc0fb5ff7bec55f552fd51ebabda80304712"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
