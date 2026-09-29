class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.396/magpie-cli-darwin-arm64"
      sha256 "9d6ce17f904970a946f82527e421e4459316878a0c1cd8fd5be754d62291676e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.396/magpie-cli-darwin-amd64"
      sha256 "d205ef3be3f3d3ac7620f6c4c5d702628222cce849829d196a1f22d618094234"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.396/magpie-cli-linux-arm64"
      sha256 "9a9f6e8485cedb12ce6fb43fe1405584e46086bf1dd74ada8660b6f73b751c83"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.396/magpie-cli-linux-amd64"
      sha256 "856b995998fc1b90b9fb00ccb64b8c28df722a6c37a78c6c3d45aac5067b7416"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
