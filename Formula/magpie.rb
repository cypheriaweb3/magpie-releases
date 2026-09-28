class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.316/magpie-cli-darwin-arm64"
      sha256 "d5b447233fff367ca132f8fef1cafcca658086d22d83740cfa7010da27615ae0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.316/magpie-cli-darwin-amd64"
      sha256 "eb31df205af1eb4d56dce88b328eba90c40f0a4c73f42bd39b7558ab9beec7a4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.316/magpie-cli-linux-arm64"
      sha256 "f15cf7bb7d071527c8f21aa26d56bcc205fc559874e47665d4fcd58c6e5cafe7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.316/magpie-cli-linux-amd64"
      sha256 "b86c512a4b9c69cae52631c762355a623f4de5911cdcdf2ec301ea0081831db4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
