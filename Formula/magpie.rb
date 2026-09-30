class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.550/magpie-cli-darwin-arm64"
      sha256 "7286377b16467c1a2e76a4020218c4f81a0ef658f8fbd69edf5b5bead234e8cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.550/magpie-cli-darwin-amd64"
      sha256 "9a51e349ba33595cb6cc4429e65f8d076373d4a1c68e8d1e37f2e1a426afbd7f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.550/magpie-cli-linux-arm64"
      sha256 "9f62fb10bda6410d101b3035258d112ad36683b0dc8e6daa8215d14b8ba0a0d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.550/magpie-cli-linux-amd64"
      sha256 "ba3602e4d43a40aae58d49ff91cf34e8c77e1cbc7e6d15a8dadb9d1877995938"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
