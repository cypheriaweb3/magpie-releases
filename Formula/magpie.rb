class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.516/magpie-cli-darwin-arm64"
      sha256 "37ffc863189d92b2c40dedc6c9d92386a7f2c8114814cb0d6deca502818606be"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.516/magpie-cli-darwin-amd64"
      sha256 "d8e3f628096405eaacf4bcc6102190f5de9c6499abc03218399dd93f48282acb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.516/magpie-cli-linux-arm64"
      sha256 "b32a649a77d8859b6d7acc528d0e68a41721a48a9823d1df568cf2deea074bf7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.516/magpie-cli-linux-amd64"
      sha256 "68bf0be060d6a4235577d58a7c73883136ca28c3bac2defc78593bec423c4036"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
