class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.786/magpie-cli-darwin-arm64"
      sha256 "f28d8eb918426cf80105efc290759ef95e94668d991c2e6426df820c5e1b4d92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.786/magpie-cli-darwin-amd64"
      sha256 "a8b1ee073cec4207c9a6ce92a10a2297c3ccf02edf60fb5272d19b251372387c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.786/magpie-cli-linux-arm64"
      sha256 "415a1ba191c791b7e590543a8d493c458ade0c552a3bdae66de895c04ac9ab18"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.786/magpie-cli-linux-amd64"
      sha256 "c6237b41146e36dc415a1424b087720af748692bf81dded837c3b71624221ca6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
