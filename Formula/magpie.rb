class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.243/magpie-cli-darwin-arm64"
      sha256 "debafec3f8f319ca154741811aacf71a146cdb4315140a985dfe0a1f6c692392"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.243/magpie-cli-darwin-amd64"
      sha256 "e83f3f24e8e1e821874e0bd914be2e510084fb101a3c6cc1fa9a146deabeffb8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.243/magpie-cli-linux-arm64"
      sha256 "0eea38ccc025de0d7f4f3a3eb00e21c625f9924123ac5829fbbdc5caaeebecde"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.243/magpie-cli-linux-amd64"
      sha256 "ccfa7bdceccd96a6aea15a2d0273973d23cc4b24e05a6620a4dbb16ef0e77447"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
