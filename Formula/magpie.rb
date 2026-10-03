class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.726/magpie-cli-darwin-arm64"
      sha256 "5596ee7384e9cbfcfc020eed9408b7e926b317607f22b07dca7dff9eece3cf59"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.726/magpie-cli-darwin-amd64"
      sha256 "14916ecfe390b4d9e5945cc53344b41831060be18bf45316c6e048b7d108a904"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.726/magpie-cli-linux-arm64"
      sha256 "eadd19b9c184a5346c455edb47b4a372d6eacb366570634de2bea48cc4e50f6a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.726/magpie-cli-linux-amd64"
      sha256 "eae4818fbb69678b3026ae235e4c79899e72c8081e1bb408506173728d1f3871"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
