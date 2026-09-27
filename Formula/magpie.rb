class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.159/magpie-cli-darwin-arm64"
      sha256 "bd00e1c6097bc9380a62f11044b378412294048731b5589d490d682008470a4b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.159/magpie-cli-darwin-amd64"
      sha256 "a818664d5287e1a48b27fc85d1c2eb83e7450ef1404010cdba388fefad8f584c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.159/magpie-cli-linux-arm64"
      sha256 "7c2fd67eb015767323b129f88c646384412c5c2bfc47d64b5e456137582a1fd3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.159/magpie-cli-linux-amd64"
      sha256 "ae3c7acef184b515ef6ebc1944bffad4595d50f5bd03775289aa0cc550f3f604"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
