class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.566/magpie-cli-darwin-arm64"
      sha256 "149f387b2ba57b6747fd7975aa1dac946843fe88dcb2aa3b9db85b34b08bfb8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.566/magpie-cli-darwin-amd64"
      sha256 "94cad51da6982349b089a180f76dca949b0345cbfec4a054f6452bc71cdcd71b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.566/magpie-cli-linux-arm64"
      sha256 "95db93ae95e5047bc0d5231f37be3bae4fea29e5beef7674f2cc8e75b80f8ebc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.566/magpie-cli-linux-amd64"
      sha256 "39a252e7373ea4b9c8918c83f7a3deacf1762498dab9a51d31b380825c9bd61e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
