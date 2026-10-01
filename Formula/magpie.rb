class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.564/magpie-cli-darwin-arm64"
      sha256 "169e9a90628ece90772516832825e463e12b9243df42a4552e9b12c5b32a0423"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.564/magpie-cli-darwin-amd64"
      sha256 "b9cac9a745071da657110324e540ae8c635660aaaed7efb5059b7e566678289a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.564/magpie-cli-linux-arm64"
      sha256 "cdcfe481fe80ae798570cd56bfe9adef6ac6c1100161c6e6dd24453ec7045fd5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.564/magpie-cli-linux-amd64"
      sha256 "24b9f0b828bf848d71e6e9ec9851367c8f24a70494b338e0c9a49a6a834ad1e8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
