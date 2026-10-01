class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.565/magpie-cli-darwin-arm64"
      sha256 "dd85991496a74f23df27984713be7a4de2059322d5d147c7edf57ee0448181a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.565/magpie-cli-darwin-amd64"
      sha256 "8f215581fe815e64bbca1871abb7be9f111080cbcfe0fc3722c830d977316d2e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.565/magpie-cli-linux-arm64"
      sha256 "ff987416a668207649ff162737c71c3ac591db860640b57eeb57e3dc22888004"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.565/magpie-cli-linux-amd64"
      sha256 "4975cab6c701df1075bcaea96a88315cb95af3dd531df099933a677d76268ecb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
