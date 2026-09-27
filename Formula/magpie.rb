class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.184/magpie-cli-darwin-arm64"
      sha256 "3697ed698b50b1ded6b219823cc4c14ea682fc661b037c7031f998e3f5add018"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.184/magpie-cli-darwin-amd64"
      sha256 "f5bf83e046e2529eb0644e592960844b408d5769ca91b8dbdb212b612c5ea5a7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.184/magpie-cli-linux-arm64"
      sha256 "b4649670651a4f3ce62756769ee6418bce8eeac500ca61edeccc060036d47dae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.184/magpie-cli-linux-amd64"
      sha256 "413a90e4ca41457a16ad51384fe82fb1db2baf278c50dfe47d4b0902523e43c5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
