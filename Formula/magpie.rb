class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.807/magpie-cli-darwin-arm64"
      sha256 "279c731651b0bbcea778be6a9a447c3e49259f8813ddb74c1a161f8cf5dcec30"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.807/magpie-cli-darwin-amd64"
      sha256 "38ebd297b070de5a900a6649d14c019677564eff296368ef4b75738767ebb929"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.807/magpie-cli-linux-arm64"
      sha256 "3d3f7a27e698ec111a7e8df4a11544eec53d935449934fcc9341a36c369d738b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.807/magpie-cli-linux-amd64"
      sha256 "bcf59e15eacae59b2539b4d42a39a2bc184233a51a499e0f9c84d1294ec09b96"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
