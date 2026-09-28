class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.317/magpie-cli-darwin-arm64"
      sha256 "6903fc9fc08cc2021dbf70e4ac5149a82a7c8664972fd86ded898a62bd9b5aec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.317/magpie-cli-darwin-amd64"
      sha256 "8b692c3e279e22646334cd300bc1dff0e3668dfb41da1b9cae2c3dd9eb225be3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.317/magpie-cli-linux-arm64"
      sha256 "5f839378e79a27e8b784e0a01edd058bf1687c9194fbea8be27ff0abad30305f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.317/magpie-cli-linux-amd64"
      sha256 "80b5d9a65fab5f204b64ebe3bb078cb5a3f9d300adf04aee59094389e95517aa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
