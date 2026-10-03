class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.755/magpie-cli-darwin-arm64"
      sha256 "e818bf410189c27a9aae0d76fb38c664c320a8f7a7e69886cd50dc9cbbeb9914"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.755/magpie-cli-darwin-amd64"
      sha256 "380a6e109c6b54ac863e4bcba0fcb065dda0eccb7aa261cc67a7e400e1210056"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.755/magpie-cli-linux-arm64"
      sha256 "fc8c61b5789db4bd6be5da72682d47834ae832c208893c6e8c5eeac294df5737"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.755/magpie-cli-linux-amd64"
      sha256 "88f99f113dbc8df1929b2dda7f1b7f4ebed15e5b702e182d47746c88174f52ad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
