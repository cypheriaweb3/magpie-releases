class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.388/magpie-cli-darwin-arm64"
      sha256 "9d7b18a3eb50d4e8d2b14b0f3701f360db13ff7e89535cb47dff6daddcd59fb5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.388/magpie-cli-darwin-amd64"
      sha256 "0e2787c0e6c17981700e863ad6373ed3d9dd897eb1a7ee98b0e5b6e583fa4ed1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.388/magpie-cli-linux-arm64"
      sha256 "54972b92d61b36b1fda5b4ffa99aca732b9242bcc3a931344f196f5b54500f18"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.388/magpie-cli-linux-amd64"
      sha256 "0c5032f4e479448cece171a705587eb2cc97ec527a409670a88ff8667880afd9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
