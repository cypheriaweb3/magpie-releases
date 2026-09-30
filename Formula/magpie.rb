class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.453/magpie-cli-darwin-arm64"
      sha256 "77d75520d9ff405394fadb8725d951c3903be1edb33b8c16cf34af3417f9e483"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.453/magpie-cli-darwin-amd64"
      sha256 "d106d1a62415d909b6d8c8ca46f276427b1ff650413b9a18e899506d28eb1340"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.453/magpie-cli-linux-arm64"
      sha256 "6df0138ecd2dcf168dde6a50be40ac208b532ccfe39634e462174b3b93ab1521"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.453/magpie-cli-linux-amd64"
      sha256 "f5a1464cb24c8c72b23caef857d251c73aada43ad6762f6391606823e744eafb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
