class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.402/magpie-cli-darwin-arm64"
      sha256 "2ec50c5af9bd45d8041fe860d5590349ae8d2d6d11bbc269307bf4b85cf834c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.402/magpie-cli-darwin-amd64"
      sha256 "0fd96bc487f07936ca88fc8d8c1dafac4a64fc3fc21e48f41c27161225755246"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.402/magpie-cli-linux-arm64"
      sha256 "e122631f573fec06e318f5def6f5d9c96374f72d50ce5aece6e53ff55ca20e03"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.402/magpie-cli-linux-amd64"
      sha256 "12f0f923f4a379fa88dadfbc88f019e0c86c6e36d13e41f7a8f478c2516a7b36"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
