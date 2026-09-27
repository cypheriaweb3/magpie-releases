class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.160/magpie-cli-darwin-arm64"
      sha256 "51328e83c0d1d2ceac3391ae112d23643f2e75c3e2a4c8552ee06bba9bf8979b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.160/magpie-cli-darwin-amd64"
      sha256 "876ff15687f522ad828f32df21d726a0fc6621101a640888558b3e250bb85cfe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.160/magpie-cli-linux-arm64"
      sha256 "92c3058e2c13a14fd280e12c1c220d02f46b3fcc68e9cd54a1fa0b6ce1ba33ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.160/magpie-cli-linux-amd64"
      sha256 "2f7639d2336d951051c592dd29e669d580e1358d2b7d527befe715b4a8c275c2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
