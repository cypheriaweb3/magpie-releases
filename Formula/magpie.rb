class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.828/magpie-cli-darwin-arm64"
      sha256 "b28060e22dc5782e56684e3726a5af5c8f7483022bf079b07af9cdc75a42276c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.828/magpie-cli-darwin-amd64"
      sha256 "265647a05d9cfc921c5342bc71f0ea57fd2cae92250bee419eea48ad55471b10"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.828/magpie-cli-linux-arm64"
      sha256 "3a5f7f303ff6c6b6f9fa0ac26e7b2c2b6a4c2d58bf6c9818458a506d551c83cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.828/magpie-cli-linux-amd64"
      sha256 "1bdf5ce220bc0b4878a8253be036fc107216f37b0682975b96412f00f9fe33db"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
