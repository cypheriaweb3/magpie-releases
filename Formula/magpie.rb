class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.645/magpie-cli-darwin-arm64"
      sha256 "130b8337309c876f37fc96a807e90368fb19832a39cbd5672b048b4738984b82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.645/magpie-cli-darwin-amd64"
      sha256 "f2e9ac5614caf6826d04533c45a3673ee9bfcc6f8711097ee66c15c939a94e7a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.645/magpie-cli-linux-arm64"
      sha256 "0dc692543923fb787966caac4a90d70c63fa01eeac59e42ca5207951e9dd5e75"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.645/magpie-cli-linux-amd64"
      sha256 "62ccaf43d14e1c7adeab1242fe07062aec36b6ac9afd59949d1df99f33c407b3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
