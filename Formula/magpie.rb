class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.416/magpie-cli-darwin-arm64"
      sha256 "b86e63163be0a44d1485541ea546a9cf442abea2ad54fdc31d15f8f6e0c5434f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.416/magpie-cli-darwin-amd64"
      sha256 "c3188a47feca99e859856c7a80ba37793494027571f03da4586c217b401f73ea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.416/magpie-cli-linux-arm64"
      sha256 "cffed7ad86df9df60e9f72190a0251d24b14a477bf8bf1ab44da8e5b23127389"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.416/magpie-cli-linux-amd64"
      sha256 "e7f1c197b8741aa02fd3e28d89a1f2f3ae05f99af35d176b6d99e6f0ace8a8c9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
