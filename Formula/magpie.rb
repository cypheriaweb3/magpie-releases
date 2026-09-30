class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.451/magpie-cli-darwin-arm64"
      sha256 "78e64c3a34cc9eede6ad98d20e22e63e7ce8cb1e3f20f64eb9ab5bbd20ed785b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.451/magpie-cli-darwin-amd64"
      sha256 "085b29a420e6d4e3bc345585617c5c73033e0e19c1226225415a6a2554287e19"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.451/magpie-cli-linux-arm64"
      sha256 "e4b5e21e1a8e3795faa2ed4aa43c3edcf0855c637a033a22383d1a945a64635a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.451/magpie-cli-linux-amd64"
      sha256 "780d332dff2d8a763134d310e1555d3ab18f40463c76f01058dcac835af03642"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
