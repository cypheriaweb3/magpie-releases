class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.226/magpie-cli-darwin-arm64"
      sha256 "78db9765e0268cf5fd80ff4ad161ee3492cbb0032578e65d4ca4fbbc809734cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.226/magpie-cli-darwin-amd64"
      sha256 "0037d8d171273b52aeb0290a6844d528e085f70aaf5aec7eecc999143683fb97"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.226/magpie-cli-linux-arm64"
      sha256 "b6694ae7b96b8062c4f52c6e97bfc218c90959e2ac144684d143896b1c890075"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.226/magpie-cli-linux-amd64"
      sha256 "deb7f45e6a4227db628096be17e4d77e1c5689f39015ac906bb39217f11bc95a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
