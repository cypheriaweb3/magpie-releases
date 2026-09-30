class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.519/magpie-cli-darwin-arm64"
      sha256 "310754f5695763e7c2a02574d86534e8eacdd8c5fd7e47bfc90bfcc90fc1eb1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.519/magpie-cli-darwin-amd64"
      sha256 "c0ddc9a7f26dfb7578fcd496cfa2e9c7ebea6b8831f5a8beff7ea8c6582239ae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.519/magpie-cli-linux-arm64"
      sha256 "5f9759398d978909ee5912dcb237071348e1b36504dd956b826c4192a1eafdfb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.519/magpie-cli-linux-amd64"
      sha256 "541236c047ed210178e404b137f0df64fa75253b605e242d0cc99108c67cbfb6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
