class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.378/magpie-cli-darwin-arm64"
      sha256 "65425b997b2648d8fde765ed1c203b307173d188697171db6e190c4c5a039041"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.378/magpie-cli-darwin-amd64"
      sha256 "12796ee72dacfd917d234e2c8e0e6d0d99a31f185dfa2654db1c2fd633376629"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.378/magpie-cli-linux-arm64"
      sha256 "ff4f6d27e54d83a1316e7839fa8da3ca7f6937ea37e91cb2bca7d8257ab1fdeb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.378/magpie-cli-linux-amd64"
      sha256 "2d22ad65cd925c90b9b23836f6589871d8a890d08259e0a5eecc1f0a7d513879"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
