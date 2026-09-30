class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.526/magpie-cli-darwin-arm64"
      sha256 "0eb961ca41f0bcc88e79f85165b39a42a5b10d7afd2a0b474a6378f85cc2df04"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.526/magpie-cli-darwin-amd64"
      sha256 "fe2acdabce9dc56c3244f0e5a549a30669601e9672eac3de79f9eb654fca8eb4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.526/magpie-cli-linux-arm64"
      sha256 "ae68050880aa61d70d7eba60e7ff263628ff22bd618d29325d6b022e8d8689db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.526/magpie-cli-linux-amd64"
      sha256 "5b5403f1cbfeee5f1782712b785d20210838ac251ca7e0b522368aff76119f82"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
