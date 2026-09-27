class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.163/magpie-cli-darwin-arm64"
      sha256 "d6fab511353c39db6710a6e6d93d50a71c6a20821cd6d93788e794cc9f4887b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.163/magpie-cli-darwin-amd64"
      sha256 "d4c4f36a4af7838867d8ac4940f7e8c65692d09553a40a748461af3bf614eff5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.163/magpie-cli-linux-arm64"
      sha256 "d56961b92b91ce3f29e10db587a13daebba98f017489ef67d89ff628ed866524"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.163/magpie-cli-linux-amd64"
      sha256 "4ae6ac90835a336c7256034ad6c80ebcbadcf4d0c9b975ca36e3aadef4f4d991"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
