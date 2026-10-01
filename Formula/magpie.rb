class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.604/magpie-cli-darwin-arm64"
      sha256 "03ef05f8cc293ed2bd35afca5d23430fb17e1e7f994f500bf724b182fe67e0f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.604/magpie-cli-darwin-amd64"
      sha256 "df027b9da286d99f677a0a9023409949fcb814c027398f749d680e3877d58fe7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.604/magpie-cli-linux-arm64"
      sha256 "8615b5df52e46b447ffc5efc06c697550926ed40305c3921b1f36583536cfb92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.604/magpie-cli-linux-amd64"
      sha256 "b783ca1e41b4ba0237dfab1a8575cdddac6eb7faa60840037b9a9516049e0d78"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
