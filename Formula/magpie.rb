class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.476/magpie-cli-darwin-arm64"
      sha256 "a4d8797378170c3f6b192aaa48ec520f3ba59aced2e710d2478dc5ac1d24b628"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.476/magpie-cli-darwin-amd64"
      sha256 "3a9c4da679ae4c5101ce8cd7a9f8a28f1e63b1d77d32a4690a58b590d78bc9d4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.476/magpie-cli-linux-arm64"
      sha256 "91adc6fdbbd48b6989ad2156a897694da22d399144b212aa14d104ea9447c7f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.476/magpie-cli-linux-amd64"
      sha256 "f3a4a8d40a242e40e4832e24cd4684bd41bb607006e3b23722711ec6cddf0e7f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
