class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.813/magpie-cli-darwin-arm64"
      sha256 "aaa384525057688d5b9639dce1a30e2ce90adb706d780defaae9bab56ff66a49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.813/magpie-cli-darwin-amd64"
      sha256 "68b037cdac5be890ef55f3af69f9dea0f865dd28bef5b8c2393264fe6da68db2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.813/magpie-cli-linux-arm64"
      sha256 "03e869ed6c3f0e31e2fd7fdc352ff36971b735b415f8e50ecf7e37307ad1c5cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.813/magpie-cli-linux-amd64"
      sha256 "d39603b76a462941c705e2fde2fa1ac13c0060f582aeb8bf748399f4565898ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
