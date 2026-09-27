class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.205/magpie-cli-darwin-arm64"
      sha256 "5d866bac99731ff47d51516c023805e42de97dcf49eeadf5fdcab08ca46693af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.205/magpie-cli-darwin-amd64"
      sha256 "72de767831a73f434598978bca2f166b41a2a2834e5a4e9910664bd09b4d02b7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.205/magpie-cli-linux-arm64"
      sha256 "a9102d1f9e7aa5fa9abd172e037a1f96cfbe7aa084714fa557437fa7454f7388"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.205/magpie-cli-linux-amd64"
      sha256 "f45f66cafe26a8f40327f8ab666e6c342f72433621f46df530460e9f30baf951"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
