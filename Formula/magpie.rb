class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.228/magpie-cli-darwin-arm64"
      sha256 "53035896048acd63dc71768534d2bc7d8ad700dbf8f5ff76ebc25f4eb52ea5ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.228/magpie-cli-darwin-amd64"
      sha256 "c9d68e9475e5cbc539ff9d8b26ebd3371ef79d2b25eb0cd4a58659e6adb5db90"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.228/magpie-cli-linux-arm64"
      sha256 "fa2290966b36c7412522e3d26c5cdf6d2b88fe528fd0741c4f13c31919d5fec3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.228/magpie-cli-linux-amd64"
      sha256 "252c1744e5cb264d351ad98b4eafe5cb49dd92a6a6ca7fc2233f43b36d5ad3af"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
