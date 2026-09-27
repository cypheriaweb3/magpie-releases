class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.187/magpie-cli-darwin-arm64"
      sha256 "615e460677ba09b9f44924a17742e2b219ba92643665c2ec94ca3665e6c92302"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.187/magpie-cli-darwin-amd64"
      sha256 "93d0c6434718e26b355fe1185ae887e3c3c079daa6d8c629aadea0670d2afefe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.187/magpie-cli-linux-arm64"
      sha256 "f8649d756e9102f69da9fd885eec94d089682d5b1f7875d06cc06c6bae814856"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.187/magpie-cli-linux-amd64"
      sha256 "43730c130482290ce506bc04ef35cb0cc2797036478c29cea15c1dd1b4a69227"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
